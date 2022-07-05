#!/usr/bin/env bash
set -e

# compile pypy3
echo "Be sure to pypy3 -m pip install Cython"
pypy3 main.pyx.compile.py build_ext --inplace
pypy3 main.pyx.py
