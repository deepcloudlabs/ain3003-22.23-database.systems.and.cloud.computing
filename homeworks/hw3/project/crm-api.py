import json

from flask import Flask, jsonify, request
from flask_cors import CORS
from flask_socketio import SocketIO
from pymongo import MongoClient
from flask_swagger_ui import get_swaggerui_blueprint

from utility.crm import extract_customer_from_request

"""
Flask/SocketIO/CORS configuration
"""
api = Flask(__name__)
api.config["DEBUG"] = True
cors = CORS(api)
socketio = SocketIO(api, cors_allowed_origins="*")

"""
mongodb
pymongo configuration 
"""
mongo_client = MongoClient("mongodb://localhost:27017")
hr_db = mongo_client["crm"]  # use crm
customers = hr_db.customers  # collection name: customers

SWAGGER_URL = '/api/docs'
API_URL = '/static/swagger.json'

apiDoc = get_swaggerui_blueprint(
    SWAGGER_URL,  # Swagger UI static files will be mapped to '{SWAGGER_URL}/dist/'
    API_URL,
    config={
        'app_name': "CRM"
    }
)

api.register_blueprint(apiDoc, url_prefix=SWAGGER_URL)

fields = [
    "_id", "firstName", "lastName", "photo", "email", "birthYear", "phones"
]


@api.route("/crm/api/v1/customers", methods=["GET"])
def get_customers():
    return json.dumps([cust for cust in customers.find({})])


@api.route("/crm/api/v1/customers/<identity>", methods=["GET"])
def get_employee_by_identity(identity):
    return jsonify(customers.find_one({"_id": identity}))


@api.route("/crm/api/v1/customers", methods=["POST"])
def add_customer():
    customer = extract_customer_from_request(request, fields)
    customers.insert_one(customer)
    socketio.emit('customer-events', {"eventType": "CUSTOMER_ACQUIRED", "eventData": customer})
    return jsonify({"status": "ok"})


@api.route("/crm/api/v1/customers/<identity>", methods=["PUT"])
def update_customer(identity):
    customer = extract_customer_from_request(request, fields)
    customers.find_one_and_update(
        {"_id": identity},
        {"$set": customer},
        upsert=False
    )
    return jsonify({"status": "ok"})


@api.route("/crm/api/v1/customers/<identity>", methods=["DELETE"])
def remove_customer(identity):
    customer = customers.find_one({"_id": identity})
    customers.delete_one({"_id": identity})
    socketio.emit('customer-events', {"eventType": "CUSTOMER_RELEASED", "eventData": customer})
    return jsonify(customer)


socketio.run(api, port=8100)
