@echo off
sdcc -mstm8 --opt-code-size --codeseg ERASE_SEG -DVER_128K -o obj\ -c erase.c
sdcc -mstm8 --opt-code-size --codeseg WRITE_SEG -DVER_128K -o obj\ -c write.c
sdldstm8 -n -f link\common.lk -f link\ver_128k_2.4.lk
