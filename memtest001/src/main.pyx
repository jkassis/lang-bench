# cython: language_level=3
import asyncio
import time
from datetime import datetime, date


print("running cpython")

# https://stackoverflow.com/questions/32266444/using-a-dictionary-in-cython-especially-inside-nogil
cache = []
for i in range(1000000):
  cache.append({
    'name': 'This is a JSON Object',
    'value': {
      'name': 'This is a sub-JSON Object',
      'time': datetime.utcnow(),
      'today': date.today(),
      'arr': [1, 2, 3, 4, 5, 6, 7, 8, 9, 0],
      'alpha': [
        'a',
        'b',
        'c',
        'd',
        'e',
        'f',
        'g',
        'h',
        'i',
        'j',
        'k',
        'l',
        'm',
        'n',
        'o',
        'p',
        'q',
        'r',
        's',
        't',
        'u',
        'v',
        'w',
        'x',
        'y',
        'z'
      ]
    }
  })
  
def wait():
  time.sleep(30)

async def waitasync():
    await asyncio.sleep(30)

if True:
    wait()
else:
    loop = asyncio.get_event_loop()
    result = loop.run_until_complete(waitasync())

print("done")
