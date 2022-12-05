import json

from kafka import KafkaConsumer
from pymongo import MongoClient

consumer = KafkaConsumer(
    "hr-events",  # topic name
    bootstrap_servers=["localhost:9092"],
    group_id="security-card",
    auto_offset_reset='earliest',
    enable_auto_commit=True,
    value_deserializer=lambda m: json.loads(m.decode('utf-8'))
)

for message in consumer:
    print(message.value)
