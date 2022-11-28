from pymongo import MongoClient

mongo_client = MongoClient("mongodb://localhost:27017")

banking_db = mongo_client["bankingdb"]

accounts = [
    {"_id": "tr1", "balance": 10000.0, "status": "ACTIVE"},
    {"_id": "tr2", "balance": 20000.0, "status": "CLOSED"},
    {"_id": "tr3", "balance": 30000.0, "status": "BLOCKED"},
    {"_id": "tr4", "balance": 40000.0, "status": "ACTIVE"},
    {"_id": "tr5", "balance": 50000.0, "status": "CLOSED"},
    {"_id": "tr6", "balance": 60000.0, "status": "BLOCKED"}
]

accounts_collection = banking_db["accounts"]

accounts_collection.insert_many(accounts)
