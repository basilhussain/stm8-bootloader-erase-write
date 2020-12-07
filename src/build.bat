@echo off

REM create required directories, if required
mkdir obj
mkdir bin

REM compile sources
sdcc -mstm8 --opt-code-size --max-allocs-per-node 25000 -DVER_128K -o obj\ -c erase.c
sdcc -mstm8 --opt-code-size --max-allocs-per-node 25000 -DVER_128K -o obj\ -c write.c
sdcc -mstm8 --opt-code-size --max-allocs-per-node 25000 -DVER_128K -o obj\ -c common.c

REM link sources
sdldstm8 -n -f link\common.lk -f link\ver_128k_2.2.lk
