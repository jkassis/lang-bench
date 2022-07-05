console.log('running node')
var cache = []
for (var i = 0; i < 1000000; i++) {
  cache.push({
    name: 'This is a JSON Object',
    value: {
      name: 'This is a sub-JSON Object',
      time: Date.now(),
      today: new Date(),
      arr: [1, 2, 3, 4, 5, 6, 7, 8, 9, 0],
      alpha: [
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
}

new Promise((resolve, reject) => {
  setTimeout(resolve, 30 * 1000)
}).then(() => {
  cache = null
  console.log('done')
})
