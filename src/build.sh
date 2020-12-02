#!/bin/bash 

# change to current working directory
cd `dirname $0`

# create required directories, if required
mkdir -p ./obj
mkdir -p ./bin

# compile sources
sdcc -mstm8 --opt-code-size --max-allocs-per-node 25000 -DVER_128K -o obj/ -c erase.c
sdcc -mstm8 --opt-code-size --max-allocs-per-node 25000 -DVER_128K -o obj/ -c write.c

# link sources
sdldstm8 -n -f link/common.lk -f link/ver_128k_2.4.lk
