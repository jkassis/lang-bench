#!/usr/bin/env bash
set -e

/usr/bin/env go build -o go main.go
./go &
GO_PID=$!
pypy3 main.pyx.py &
CPYTHON_PID=$!
/usr/bin/env luajit main.lua &
LUA_PID=$!
/usr/bin/env node main.js &
NODE_PID=$!
/usr/bin/env pypy3 main.py &
PYTHON_PID=$!

echo top -pid $NODE_PID
top -pid $LUA_PID -pid $NODE_PID -pid $PYTHON_PID -pid $GO_PID -pid $CPYTHON_PID

