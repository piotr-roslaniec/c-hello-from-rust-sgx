#!/bin/bash -e

LD_LIBRARY_PATH=target/release/

gcc --std=c11 -o c-example src/main.c -L $LD_LIBRARY_PATH -lapp

cp ../bin/* .

./c-example