import asyncio
import json

import websockets

from pymongo import MongoClient

mongo_client = MongoClient("mongodb://localhost:27017")

banking_db = mongo_client["bankingdb"]

trades_collection = banking_db["trades"]


async def ws_consumer(frames):
    async for frame in frames:
        trade = json.loads(frame)
        # trade[]
        trades_collection.insert_one(trade)
        print(trade)


async def connect_to_binance():
    async with websockets.connect("wss://stream.binance.com:9443/ws/btcusdt@trade") as ws:
        await ws_consumer(ws)


asyncio.run(connect_to_binance())
