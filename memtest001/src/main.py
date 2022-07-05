import asyncio
from datetime import datetime, date


print('running pypy3')
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
  

async def wait():
    await asyncio.sleep(30)
    return

asyncio.get_event_loop().run_until_complete(wait())
print('done')
