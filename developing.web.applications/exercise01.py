import time

import requests
import schedule


def call_binance():
    res = requests.get("https://api.binance.com/api/v3/ticker/price?symbol=BTCUSDT")
    print(res.json())


schedule.every(3).seconds.do(call_binance)

while True:
    schedule.run_pending()
    time.sleep(1)