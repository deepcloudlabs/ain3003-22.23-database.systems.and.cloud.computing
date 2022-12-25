from flask import Flask, jsonify, request
from flask_cors import CORS
from flask_socketio import SocketIO
from pymongo import MongoClient
from flask_swagger_ui import get_swaggerui_blueprint

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
    SWAGGER_URL,
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
    pass
    # TODO: get customers by pagination
    # TODO: return customers in the page as JSON


@api.route("/crm/api/v1/customers/<identity>", methods=["GET"])
def get_employee_by_identity(identity):
    pass
    # TODO: get customer by identity
    # TODO: return found customer as JSON


@api.route("/crm/api/v1/customers", methods=["POST"])
def add_customer():
    # TODO: create new customer
    # TODO: create an event and send it through Websocket and Kafka
    # TODO: Event: {"eventType": "CUSTOMER_ACQUIRED", "eventData": customer}
    return jsonify({"status": "ok"})


@api.route("/crm/api/v1/customers/<identity>", methods=["PUT"])
def update_customer(identity):
    # TODO: update customer
    return jsonify({"status": "ok"})


@api.route("/crm/api/v1/customers/<identity>", methods=["DELETE"])
def remove_customer(identity):
    # TODO: release a customer by identity
    # TODO: create an event and send it through Websocket and Kafka
    # TODO: Event: {"eventType": "CUSTOMER_RELEASED", "eventData": customer}
    # TODO: return removed customer as JSON
    pass


socketio.run(api, port=8100)
