import asyncio
import json

import websockets


async def ws_consumer(frames):
    async for frame in frames:
        trade = json.loads(frame)
        print(trade)


async def connect_to_binance():
    async with websockets.connect("wss://stream.binance.com:9443/ws/btcusdt@trade") as ws:
        await ws_consumer(ws)


asyncio.run(connect_to_binance())
