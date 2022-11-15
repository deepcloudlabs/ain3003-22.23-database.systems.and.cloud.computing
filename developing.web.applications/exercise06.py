from pymongo import MongoClient

mongo_client = MongoClient("mongodb://localhost:27017")

banking_db = mongo_client["bankingdb"]

accounts_collection = banking_db["accounts"]

result = accounts_collection.update_many(
    {"status": "CLOSED"},
    {"$set": {"balance": 0.0} }
)
print(f"{result.modified_count} document(s) are updated")
