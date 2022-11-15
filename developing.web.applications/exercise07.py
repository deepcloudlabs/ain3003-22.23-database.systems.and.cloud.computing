from pymongo import MongoClient

mongo_client = MongoClient("mongodb://localhost:27017")

banking_db = mongo_client["bankingdb"]

accounts_collection = banking_db["accounts"]

result = accounts_collection.delete_many({"status": "CLOSED"})
print(f"{result.deleted_count} document(s) are deleted")
