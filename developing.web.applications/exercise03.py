from pymongo import MongoClient

mongo_client = MongoClient("mongodb://localhost:27017")

for db_name in mongo_client.list_database_names():
    print(db_name)

world_db = mongo_client["world"]

for collection_name in world_db.list_collection_names():
    print(collection_name)

