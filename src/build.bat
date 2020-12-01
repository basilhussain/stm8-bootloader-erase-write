@echo off
sdcc -mstm8 --opt-code-size --codeseg ERASE_SEG -o obj\ -c erase.c
sdcc -mstm8 --opt-code-size --codeseg WRITE_SEG -o obj\ -c write.c
sdcc -mstm8 -lstm8 --data-loc 0x200 -Wl-g_watchdog_refresh=0x608A -Wl-bERASE_SEG=0xA0 -Wl-bWRITE_SEG=0x180 --out-fmt-ihx -o bin\erase_write.hex obj\erase.rel obj\write.rel
