from pymongo import MongoClient

mongo_client = MongoClient("mongodb://localhost:27017")

banking_db = mongo_client["bankingdb"]

accounts_collection = banking_db["accounts"]

for account in accounts_collection.find({"status": "ACTIVE"},{"balance": False, "_id": False}):
    print(account)

for account in accounts_collection.find({
    "$and": [
        {"status": "BLOCKED"},
        {"balance": {"$gt": 40000.0}}
    ]}
    ):
    print(account)


