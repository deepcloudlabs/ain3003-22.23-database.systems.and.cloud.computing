# region MongoDB
# DDD              : Domain Entity
# REST Architecture: Resource
# Domain Capabilities: Hire Employee, Fire Employee, ...
jack = {
    "identity": "1",
    "fullname": "jack shephard",
    "salary": 100000,
    "iban": "tr1",
    "birthYear": 1956,
    "department": "IT",
    "jobStyle": "FULL_TIME",
    "photo": "data:image/png;base64,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"
}

from pymongo import MongoClient

mongo_client = MongoClient("mongodb://localhost:27017")
hr_db = mongo_client["hrdb"]
employees = hr_db["employees"]
fields = [
    "identity", "fullname", "salary",
    "iban", "birthYear", "photo",
    "department", "jobStyle"
]
# endregion

# region REST API
from flask_cors import CORS
from flask_socketio import SocketIO
from flask import Flask, jsonify, request
import json

api = Flask(__name__)
api.config["DEBUG"] = True
cors = CORS(api)
socketio = SocketIO(api, cors_allowed_origins="*")


def extract_employee_from_request(request, fields):
    emp = {}
    for field in fields:
        if field in request.json:
            emp[field] = request.json[field]
    if "identity" in emp:
        emp["_id"] = emp["identity"]
    return emp


@api.route("/hr/api/v1/employees/<id>", methods=["GET"])
def get_employee_by_identity(id):
    return jsonify(employees.find_one({"_id": id})) \
 \
        # http://localhost:8100/hr/api/v1/employees?page=5&size=25


@api.route("/hr/api/v1/employees", methods=["GET"])
def get_employees():
    page_no = int(request.args.get("page", 0))
    page_size = int(request.args.get("size", 10))
    offset = page_no * page_size
    emps = employees.find({}).skip(offset) \
        .limit(page_size)
    return json.dumps([emp for emp in emps])


@api.route("/hr/api/v1/employees", methods=["POST"])
def add_employee():
    emp = extract_employee_from_request(request, fields)
    employees.insert_one(emp)
    return jsonify({"status": "ok"})


@api.route("/hr/api/v1/employees/<id>", methods=["PUT"])
def update_employee(id):
    emp = extract_employee_from_request(request, fields)
    employees.update_one(
        {"_id": id},
        {"$set": emp},
        upsert=False
    )
    return jsonify({"status": "ok"})


@api.route("/hr/api/v1/employees/<id>", methods=["DELETE"])
def remove_employee(id):
    emp = employees.find_one({"_id": id})
    employees.delete_one({"_id": id})
    return jsonify(emp)


# endregion

socketio.run(api, port=8100)