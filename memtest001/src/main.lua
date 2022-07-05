print 'running luajit'
cache = {}
for i = 0, 1000000 do
    cache[i] = {
        name = "This is a JSON Object",
        value = {
            name = "This is a sub-JSON Object",
            time = os.time,
            today = os.time,
            arr = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0},
            alpha = {
                "a",
                "b",
                "c",
                "d",
                "e",
                "f",
                "g",
                "h",
                "i",
                "j",
                "k",
                "l",
                "m",
                "n",
                "o",
                "p",
                "q",
                "r",
                "s",
                "t",
                "u",
                "v",
                "w",
                "x",
                "y",
                "z"
            }
        }
    }
end

function sleep(n)
    os.execute("sleep " .. tonumber(n))
end

sleep(30)
