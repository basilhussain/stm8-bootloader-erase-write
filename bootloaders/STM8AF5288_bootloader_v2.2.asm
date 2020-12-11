
naken_util - by Michael Kohn
                Joe Davisson
    Web: http://www.mikekohn.net/
  Email: mike@mikekohn.net

Version: January 20, 2020

Loaded hexfile STM8AF5288_bootloader_vx_x.hex from 0x6000 to 0x67ff
Type help for a list of commands.

Addr    Opcode Instruction                              Cycles
------- ------ ----------------------------------       ------
0x6000:  9b             sim                                      cycles=1
0x6001:  ad 0c          callr $600f  (offset=12)                 cycles=4
0x6003:  25 19          jrc $601e  (offset=25)                   cycles=1-2
0x6005:  ce 48 7e       ldw X, $487e                             cycles=2
0x6008:  a3 55 aa       cpw X, #$55aa                            cycles=2
0x600b:  27 11          jreq $601e  (offset=17)                  cycles=1-2
0x600d:  20 16          jra $6025  (offset=22)                   cycles=2
0x600f:  c6 80 00       ld A, $8000                              cycles=1
0x6012:  a1 82          cp A, #$82                               cycles=1
0x6014:  27 06          jreq $601c  (offset=6)                   cycles=1-2
0x6016:  a1 ac          cp A, #$ac                               cycles=1
0x6018:  27 02          jreq $601c  (offset=2)                   cycles=1-2
0x601a:  99             scf                                      cycles=1
0x601b:  81             ret                                      cycles=4
0x601c:  98             rcf                                      cycles=1
0x601d:  81             ret                                      cycles=4
0x601e:  c6 48 00       ld A, $4800                              cycles=1
0x6021:  a1 aa          cp A, #$aa                               cycles=1
0x6023:  26 09          jrne $602e  (offset=9)                   cycles=1-2
0x6025:  5f             clrw X                                   cycles=1
0x6026:  4f             clr A                                    cycles=1
0x6027:  4b 28          push #$28                                cycles=1
0x6029:  86             pop CC                                   cycles=1
0x602a:  ac 00 80 00    jpf $8000                                cycles=2
0x602e:  ad 5a          callr $608a  (offset=90)                 cycles=4
0x6030:  72 10 50 c0    bset $50c0, #0                           cycles=1
0x6034:  4f             clr A                                    cycles=1
0x6035:  c7 50 c6       ld $50c6,A                               cycles=1
0x6038:  b7 97          ld $97,A                                 cycles=1
0x603a:  72 10 50 c1    bset $50c1, #0                           cycles=1
0x603e:  ae 75 30       ldw X, #$7530                            cycles=2
0x6041:  5a             decw X                                   cycles=1
0x6042:  27 10          jreq $6054  (offset=16)                  cycles=1-2
0x6044:  72 03 50 c1 f8 btjf $50c1, #1, $6041  (offset=-8)       cycles=2-3
0x6049:  35 01 00 97    mov $97, #$01                            cycles=1
0x604d:  ae 8f 23       ldw X, #$8f23                            cycles=2
0x6050:  bf 95          ldw $95,X                                cycles=2
0x6052:  ad 47          callr $609b  (offset=71)                 cycles=4
0x6054:  72 18 50 03    bset $5003, #4                           cycles=1
0x6058:  72 1c 50 12    bset $5012, #6                           cycles=1
0x605c:  3f 8e          clr $8e                                  cycles=1
0x605e:  a6 01          ld A, #$01                               cycles=1
0x6060:  b7 99          ld $99,A                                 cycles=1
0x6062:  b7 9a          ld $9a,A                                 cycles=1
0x6064:  cd 61 7a       call $617a                               cycles=4
0x6067:  72 06 00 8e 02 btjt $8e, #3, $606e  (offset=2)          cycles=2-3
0x606c:  20 b7          jra $6025  (offset=-73)                  cycles=2
0x606e:  35 56 50 62    mov $5062, #$56                          cycles=1
0x6072:  35 ae 50 62    mov $5062, #$ae                          cycles=1
0x6076:  35 ae 50 64    mov $5064, #$ae                          cycles=1
0x607a:  35 56 50 64    mov $5064, #$56                          cycles=1
0x607e:  a6 79          ld A, #$79                               cycles=1
0x6080:  cd 61 22       call $6122                               cycles=4
0x6083:  cd 63 23       call $6323                               cycles=4
0x6086:  92 ac 00 8a    jpf [$8a.e]                              cycles=6
0x608a:  35 55 50 e0    mov $50e0, #$55                          cycles=1
0x608e:  35 05 50 e1    mov $50e1, #$05                          cycles=1
0x6092:  35 aa 50 e0    mov $50e0, #$aa                          cycles=1
0x6096:  35 7f 50 d1    mov $50d1, #$7f                          cycles=1
0x609a:  81             ret                                      cycles=4
0x609b:  72 1a 54 20    bset $5420, #5                           cycles=1
0x609f:  9d             nop                                      cycles=1
0x60a0:  9d             nop                                      cycles=1
0x60a1:  72 10 54 20    bset $5420, #0                           cycles=1
0x60a5:  72 02 54 21 fb btjt $5421, #1, $60a5  (offset=-5)       cycles=2-3
0x60aa:  72 01 54 21 f6 btjf $5421, #0, $60a5  (offset=-10)      cycles=2-3
0x60af:  a6 0f          ld A, #$0f                               cycles=1
0x60b1:  c7 54 25       ld $5425,A                               cycles=1
0x60b4:  a6 02          ld A, #$02                               cycles=1
0x60b6:  c7 54 27       ld $5427,A                               cycles=1
0x60b9:  4f             clr A                                    cycles=1
0x60ba:  c7 54 29       ld $5429,A                               cycles=1
0x60bd:  c7 54 2b       ld $542b,A                               cycles=1
0x60c0:  c7 54 2d       ld $542d,A                               cycles=1
0x60c3:  c7 54 2f       ld $542f,A                               cycles=1
0x60c6:  a6 06          ld A, #$06                               cycles=1
0x60c8:  c7 54 27       ld $5427,A                               cycles=1
0x60cb:  be 95          ldw X, $95                               cycles=2
0x60cd:  cf 54 2c       ldw $542c,X                              cycles=2
0x60d0:  72 14 54 20    bset $5420, #2                           cycles=1
0x60d4:  72 16 54 20    bset $5420, #3                           cycles=1
0x60d8:  72 18 54 20    bset $5420, #4                           cycles=1
0x60dc:  4f             clr A                                    cycles=1
0x60dd:  5f             clrw X                                   cycles=1
0x60de:  cf 54 30       ldw $5430,X                              cycles=2
0x60e1:  cf 54 32       ldw $5432,X                              cycles=2
0x60e4:  c7 54 34       ld $5434,A                               cycles=1
0x60e7:  c7 54 26       ld $5426,A                               cycles=1
0x60ea:  a6 01          ld A, #$01                               cycles=1
0x60ec:  c7 54 32       ld $5432,A                               cycles=1
0x60ef:  4f             clr A                                    cycles=1
0x60f0:  c7 54 25       ld $5425,A                               cycles=1
0x60f3:  c7 54 20       ld $5420,A                               cycles=1
0x60f6:  9d             nop                                      cycles=1
0x60f7:  ae 19 00       ldw X, #$1900                            cycles=2
0x60fa:  5a             decw X                                   cycles=1
0x60fb:  27 05          jreq $6102  (offset=5)                   cycles=1-2
0x60fd:  72 00 54 21 f8 btjt $5421, #0, $60fa  (offset=-8)       cycles=2-3
0x6102:  81             ret                                      cycles=4
0x6103:  72 12 54 20    bset $5420, #1                           cycles=1
0x6107:  72 03 54 21 fb btjf $5421, #1, $6107  (offset=-5)       cycles=2-3
0x610c:  81             ret                                      cycles=4
0x610d:  b6 00          ld A, $00                                cycles=1
0x610f:  c7 54 27       ld $5427,A                               cycles=1
0x6112:  72 12 54 28    bset $5428, #1                           cycles=1
0x6116:  72 1a 54 24    bset $5424, #5                           cycles=1
0x611a:  c6 54 24       ld A, $5424                              cycles=1
0x611d:  a4 03          and A, #$03                              cycles=1
0x611f:  26 f5          jrne $6116  (offset=-11)                 cycles=1-2
0x6121:  81             ret                                      cycles=4
0x6122:  b7 8d          ld $8d,A                                 cycles=1
0x6124:  72 01 00 8e 0f btjf $8e, #0, $6138  (offset=15)         cycles=2-3
0x6129:  c6 52 30       ld A, $5230                              cycles=1
0x612c:  b6 8d          ld A, $8d                                cycles=1
0x612e:  c7 52 31       ld $5231,A                               cycles=1
0x6131:  72 0d 52 30 fb btjf $5230, #6, $6131  (offset=-5)       cycles=2-3
0x6136:  20 41          jra $6179  (offset=65)                   cycles=2
0x6138:  72 03 00 8e 26 btjf $8e, #1, $6163  (offset=38)         cycles=2-3
0x613d:  a6 00          ld A, #$00                               cycles=1
0x613f:  c7 54 27       ld $5427,A                               cycles=1
0x6142:  a6 01          ld A, #$01                               cycles=1
0x6144:  c7 54 29       ld $5429,A                               cycles=1
0x6147:  90 ae 00 08    ldw Y, #$8                               cycles=2
0x614b:  90 cf 54 2a    ldw $542a,Y                              cycles=2
0x614f:  b6 8d          ld A, $8d                                cycles=1
0x6151:  c7 54 2e       ld $542e,A                               cycles=1
0x6154:  a6 01          ld A, #$01                               cycles=1
0x6156:  c7 54 28       ld $5428,A                               cycles=1
0x6159:  cd 60 8a       call $608a                               cycles=4
0x615c:  72 05 54 28 f8 btjf $5428, #2, $6159  (offset=-8)       cycles=2-3
0x6161:  20 16          jra $6179  (offset=22)                   cycles=2
0x6163:  c6 52 40       ld A, $5240                              cycles=1
0x6166:  b6 8d          ld A, $8d                                cycles=1
0x6168:  c7 52 41       ld $5241,A                               cycles=1
0x616b:  72 0d 52 40 fb btjf $5240, #6, $616b  (offset=-5)       cycles=2-3
0x6170:  9d             nop                                      cycles=1
0x6171:  72 0b 52 40 fb btjf $5240, #5, $6171  (offset=-5)       cycles=2-3
0x6176:  c6 52 41       ld A, $5241                              cycles=1
0x6179:  81             ret                                      cycles=4
0x617a:  a6 08          ld A, #$08                               cycles=1
0x617c:  c7 53 2a       ld $532a,A                               cycles=1
0x617f:  72 10 53 20    bset $5320, #0                           cycles=1
0x6183:  72 01 53 22 fb btjf $5322, #0, $6183  (offset=-5)       cycles=2-3
0x6188:  4f             clr A                                    cycles=1
0x6189:  c7 53 22       ld $5322,A                               cycles=1
0x618c:  72 10 53 20    bset $5320, #0                           cycles=1
0x6190:  72 0d 50 10 04 btjf $5010, #6, $6199  (offset=4)        cycles=2-3
0x6195:  ac 00 62 19    jpf $6219                                cycles=2
0x6199:  72 01 00 9a 7b btjf $9a, #0, $6219  (offset=123)        cycles=2-3
0x619e:  ae 04 60       ldw X, #$460                             cycles=2
0x61a1:  5a             decw X                                   cycles=1
0x61a2:  27 18          jreq $61bc  (offset=24)                  cycles=1-2
0x61a4:  72 0d 50 10 f8 btjf $5010, #6, $61a1  (offset=-8)       cycles=2-3
0x61a9:  72 10 53 00    bset $5300, #0                           cycles=1
0x61ad:  72 0c 50 10 fb btjt $5010, #6, $61ad  (offset=-5)       cycles=2-3
0x61b2:  ce 53 0a       ldw X, $530a                             cycles=2
0x61b5:  72 14 00 8e    bset $8e, #2                             cycles=1
0x61b9:  cc 62 7e       jp $627e                                 cycles=1
0x61bc:  3f 9a          clr $9a                                  cycles=1
0x61be:  20 59          jra $6219  (offset=89)                   cycles=2
0x61c0:  72 08 50 01 cb btjt $5001, #4, $6190  (offset=-53)      cycles=2-3
0x61c5:  72 01 00 99 c6 btjf $99, #0, $6190  (offset=-58)        cycles=2-3
0x61ca:  ae 04 60       ldw X, #$460                             cycles=2
0x61cd:  5a             decw X                                   cycles=1
0x61ce:  27 18          jreq $61e8  (offset=24)                  cycles=1-2
0x61d0:  72 09 50 01 f8 btjf $5001, #4, $61cd  (offset=-8)       cycles=2-3
0x61d5:  72 10 53 00    bset $5300, #0                           cycles=1
0x61d9:  72 08 50 01 fb btjt $5001, #4, $61d9  (offset=-5)       cycles=2-3
0x61de:  ce 53 0a       ldw X, $530a                             cycles=2
0x61e1:  72 10 00 8e    bset $8e, #0                             cycles=1
0x61e5:  cc 62 7e       jp $627e                                 cycles=1
0x61e8:  3f 99          clr $99                                  cycles=1
0x61ea:  20 a4          jra $6190  (offset=-92)                  cycles=2
0x61ec:  72 01 00 99 05 btjf $99, #0, $61f6  (offset=5)          cycles=2-3
0x61f1:  72 09 50 01 d4 btjf $5001, #4, $61ca  (offset=-44)      cycles=2-3
0x61f6:  72 01 00 9a 05 btjf $9a, #0, $6200  (offset=5)          cycles=2-3
0x61fb:  72 0d 50 10 9e btjf $5010, #6, $619e  (offset=-98)      cycles=2-3
0x6200:  72 00 53 22 02 btjt $5322, #0, $6207  (offset=2)        cycles=2-3
0x6205:  20 b9          jra $61c0  (offset=-71)                  cycles=2
0x6207:  72 17 00 8e    bres $8e, #3                             cycles=1
0x620b:  cd 60 0f       call $600f                               cycles=4
0x620e:  25 04          jrc $6214  (offset=4)                    cycles=1-2
0x6210:  ac 00 62 dd    jpf $62dd                                cycles=2
0x6214:  35 80 50 d1    mov $50d1, #$80                          cycles=1
0x6218:  71             ???                                      cycles=?
0x6219:  72 01 00 99 05 btjf $99, #0, $6223  (offset=5)          cycles=2-3
0x621e:  72 09 50 01 a7 btjf $5001, #4, $61ca  (offset=-89)      cycles=2-3
0x6223:  cd 60 8a       call $608a                               cycles=4
0x6226:  72 00 00 97 02 btjt $97, #0, $622d  (offset=2)          cycles=2-3
0x622b:  20 bf          jra $61ec  (offset=-65)                  cycles=2
0x622d:  72 01 00 99 05 btjf $99, #0, $6237  (offset=5)          cycles=2-3
0x6232:  72 09 50 01 93 btjf $5001, #4, $61ca  (offset=-109)     cycles=2-3
0x6237:  c6 54 24       ld A, $5424                              cycles=1
0x623a:  a4 03          and A, #$03                              cycles=1
0x623c:  26 02          jrne $6240  (offset=2)                   cycles=1-2
0x623e:  20 ac          jra $61ec  (offset=-84)                  cycles=2
0x6240:  72 09 54 24 09 btjf $5424, #4, $624e  (offset=9)        cycles=2-3
0x6245:  72 19 54 24    bres $5424, #4                           cycles=1
0x6249:  cd 61 0d       call $610d                               cycles=4
0x624c:  20 9e          jra $61ec  (offset=-98)                  cycles=2
0x624e:  a6 06          ld A, #$06                               cycles=1
0x6250:  c7 54 27       ld $5427,A                               cycles=1
0x6253:  c6 54 28       ld A, $5428                              cycles=1
0x6256:  a4 70          and A, #$70                              cycles=1
0x6258:  27 06          jreq $6260  (offset=6)                   cycles=1-2
0x625a:  72 1a 54 24    bset $5424, #5                           cycles=1
0x625e:  20 8c          jra $61ec  (offset=-116)                 cycles=2
0x6260:  a6 07          ld A, #$07                               cycles=1
0x6262:  c7 54 27       ld $5427,A                               cycles=1
0x6265:  ce 54 2a       ldw X, $542a                             cycles=2
0x6268:  72 1a 54 24    bset $5424, #5                           cycles=1
0x626c:  54             srlw X                                   cycles=2
0x626d:  54             srlw X                                   cycles=2
0x626e:  9f             ld A, XL                                 cycles=1
0x626f:  a1 7f          cp A, #$7f                               cycles=1
0x6271:  27 03          jreq $6276  (offset=3)                   cycles=1-2
0x6273:  cc 61 ec       jp $61ec                                 cycles=1
0x6276:  72 12 00 8e    bset $8e, #1                             cycles=1
0x627a:  72 1a 54 24    bset $5424, #5                           cycles=1
0x627e:  72 16 00 8e    bset $8e, #3                             cycles=1
0x6282:  72 02 00 8e 56 btjt $8e, #1, $62dd  (offset=86)         cycles=2-3
0x6287:  a3 00 c3       cpw X, #$c3                              cycles=2
0x628a:  25 05          jrc $6291  (offset=5)                    cycles=1-2
0x628c:  1c 00 04       addw X, #$4                              cycles=2
0x628f:  20 03          jra $6294  (offset=3)                    cycles=2
0x6291:  1c 00 06       addw X, #$6                              cycles=2
0x6294:  a6 07          ld A, #$07                               cycles=1
0x6296:  62             div X, A                                 cycles=2-17
0x6297:  a6 10          ld A, #$10                               cycles=1
0x6299:  62             div X, A                                 cycles=2-17
0x629a:  b7 94          ld $94,A                                 cycles=1
0x629c:  9f             ld A, XL                                 cycles=1
0x629d:  b7 93          ld $93,A                                 cycles=1
0x629f:  b6 97          ld A, $97                                cycles=1
0x62a1:  27 03          jreq $62a6  (offset=3)                   cycles=1-2
0x62a3:  cd 61 03       call $6103                               cycles=4
0x62a6:  72 00 00 8e 18 btjt $8e, #0, $62c3  (offset=24)         cycles=2-3
0x62ab:  72 16 52 45    bset $5245, #3                           cycles=1
0x62af:  72 14 52 45    bset $5245, #2                           cycles=1
0x62b3:  72 1a 52 49    bset $5249, #5                           cycles=1
0x62b7:  b6 94          ld A, $94                                cycles=1
0x62b9:  c7 52 43       ld $5243,A                               cycles=1
0x62bc:  b6 93          ld A, $93                                cycles=1
0x62be:  c7 52 42       ld $5242,A                               cycles=1
0x62c1:  20 1a          jra $62dd  (offset=26)                   cycles=2
0x62c3:  72 16 52 35    bset $5235, #3                           cycles=1
0x62c7:  72 14 52 35    bset $5235, #2                           cycles=1
0x62cb:  72 18 52 34    bset $5234, #4                           cycles=1
0x62cf:  72 14 52 34    bset $5234, #2                           cycles=1
0x62d3:  b6 94          ld A, $94                                cycles=1
0x62d5:  c7 52 33       ld $5233,A                               cycles=1
0x62d8:  b6 93          ld A, $93                                cycles=1
0x62da:  c7 52 32       ld $5232,A                               cycles=1
0x62dd:  4f             clr A                                    cycles=1
0x62de:  c7 53 00       ld $5300,A                               cycles=1
0x62e1:  c7 53 20       ld $5320,A                               cycles=1
0x62e4:  c7 53 22       ld $5322,A                               cycles=1
0x62e7:  c7 53 2a       ld $532a,A                               cycles=1
0x62ea:  5f             clrw X                                   cycles=1
0x62eb:  cf 53 0a       ldw $530a,X                              cycles=2
0x62ee:  cf 53 28       ldw $5328,X                              cycles=2
0x62f1:  72 06 00 8e 2c btjt $8e, #3, $6322  (offset=44)         cycles=2-3
0x62f6:  b6 97          ld A, $97                                cycles=1
0x62f8:  27 13          jreq $630d  (offset=19)                  cycles=1-2
0x62fa:  5f             clrw X                                   cycles=1
0x62fb:  bf 95          ldw $95,X                                cycles=2
0x62fd:  cd 60 9b       call $609b                               cycles=4
0x6300:  5f             clrw X                                   cycles=1
0x6301:  cf 54 27       ldw $5427,X                              cycles=2
0x6304:  cf 54 32       ldw $5432,X                              cycles=2
0x6307:  cf 54 20       ldw $5420,X                              cycles=2
0x630a:  cd 61 03       call $6103                               cycles=4
0x630d:  90 5f          clrw Y                                   cycles=1
0x630f:  4f             clr A                                    cycles=1
0x6310:  9d             nop                                      cycles=1
0x6311:  c7 50 03       ld $5003,A                               cycles=1
0x6314:  c7 50 12       ld $5012,A                               cycles=1
0x6317:  c7 50 c1       ld $50c1,A                               cycles=1
0x631a:  35 18 50 c6    mov $50c6, #$18                          cycles=1
0x631e:  35 7f 50 d1    mov $50d1, #$7f                          cycles=1
0x6322:  81             ret                                      cycles=4
0x6323:  ae 63 7b       ldw X, #$637b                            cycles=2
0x6326:  cd 60 8a       call $608a                               cycles=4
0x6329:  72 00 00 8e 0f btjt $8e, #0, $633d  (offset=15)         cycles=2-3
0x632e:  72 02 00 8e 20 btjt $8e, #1, $6353  (offset=32)         cycles=2-3
0x6333:  72 0b 52 40 ee btjf $5240, #5, $6326  (offset=-18)      cycles=2-3
0x6338:  c6 52 41       ld A, $5241                              cycles=1
0x633b:  20 3d          jra $637a  (offset=61)                   cycles=2
0x633d:  72 0b 52 30 e4 btjf $5230, #5, $6326  (offset=-28)      cycles=2-3
0x6342:  c6 52 30       ld A, $5230                              cycles=1
0x6345:  a4 09          and A, #$09                              cycles=1
0x6347:  27 05          jreq $634e  (offset=5)                   cycles=1-2
0x6349:  c6 52 31       ld A, $5231                              cycles=1
0x634c:  20 7c          jra $63ca  (offset=124)                  cycles=2
0x634e:  c6 52 31       ld A, $5231                              cycles=1
0x6351:  20 27          jra $637a  (offset=39)                   cycles=2
0x6353:  c6 54 24       ld A, $5424                              cycles=1
0x6356:  a4 03          and A, #$03                              cycles=1
0x6358:  27 cc          jreq $6326  (offset=-52)                 cycles=1-2
0x635a:  72 09 54 24 06 btjf $5424, #4, $6365  (offset=6)        cycles=2-3
0x635f:  72 19 54 24    bres $5424, #4                           cycles=1
0x6363:  20 65          jra $63ca  (offset=101)                  cycles=2
0x6365:  a6 06          ld A, #$06                               cycles=1
0x6367:  c7 54 27       ld $5427,A                               cycles=1
0x636a:  c6 54 28       ld A, $5428                              cycles=1
0x636d:  a4 70          and A, #$70                              cycles=1
0x636f:  26 07          jrne $6378  (offset=7)                   cycles=1-2
0x6371:  a6 07          ld A, #$07                               cycles=1
0x6373:  c7 54 27       ld $5427,A                               cycles=1
0x6376:  20 02          jra $637a  (offset=2)                    cycles=2
0x6378:  20 50          jra $63ca  (offset=80)                   cycles=2
0x637a:  fc             jp (X)                                   cycles=1
0x637b:  72 02 00 8e 07 btjt $8e, #1, $6387  (offset=7)          cycles=2-3
0x6380:  b7 82          ld $82,A                                 cycles=1
0x6382:  ae 63 91       ldw X, #$6391                            cycles=2
0x6385:  20 9f          jra $6326  (offset=-97)                  cycles=2
0x6387:  ce 54 2a       ldw X, $542a                             cycles=2
0x638a:  54             srlw X                                   cycles=2
0x638b:  54             srlw X                                   cycles=2
0x638c:  9f             ld A, XL                                 cycles=1
0x638d:  b7 82          ld $82,A                                 cycles=1
0x638f:  20 08          jra $6399  (offset=8)                    cycles=2
0x6391:  b7 83          ld $83,A                                 cycles=1
0x6393:  b8 82          xor A, $82                               cycles=1
0x6395:  a1 ff          cp A, #$ff                               cycles=1
0x6397:  26 31          jrne $63ca  (offset=49)                  cycles=1-2
0x6399:  b6 82          ld A, $82                                cycles=1
0x639b:  ae 64 1f       ldw X, #$641f                            cycles=2
0x639e:  a1 00          cp A, #$00                               cycles=1
0x63a0:  27 d8          jreq $637a  (offset=-40)                 cycles=1-2
0x63a2:  ae 64 63       ldw X, #$6463                            cycles=2
0x63a5:  a1 11          cp A, #$11                               cycles=1
0x63a7:  27 d1          jreq $637a  (offset=-47)                 cycles=1-2
0x63a9:  ae 65 86       ldw X, #$6586                            cycles=2
0x63ac:  a1 21          cp A, #$21                               cycles=1
0x63ae:  27 ca          jreq $637a  (offset=-54)                 cycles=1-2
0x63b0:  ae 65 b4       ldw X, #$65b4                            cycles=2
0x63b3:  a1 31          cp A, #$31                               cycles=1
0x63b5:  27 c3          jreq $637a  (offset=-61)                 cycles=1-2
0x63b7:  ae 64 ae       ldw X, #$64ae                            cycles=2
0x63ba:  a1 43          cp A, #$43                               cycles=1
0x63bc:  27 bc          jreq $637a  (offset=-68)                 cycles=1-2
0x63be:  72 03 00 8e 07 btjf $8e, #1, $63ca  (offset=7)          cycles=2-3
0x63c3:  ae 63 da       ldw X, #$63da                            cycles=2
0x63c6:  a1 03          cp A, #$03                               cycles=1
0x63c8:  27 b0          jreq $637a  (offset=-80)                 cycles=1-2
0x63ca:  72 03 00 8e 03 btjf $8e, #1, $63d2  (offset=3)          cycles=2-3
0x63cf:  cd 61 0d       call $610d                               cycles=4
0x63d2:  a6 1f          ld A, #$1f                               cycles=1
0x63d4:  cd 61 22       call $6122                               cycles=4
0x63d7:  cc 63 23       jp $6323                                 cycles=1
0x63da:  c6 54 29       ld A, $5429                              cycles=1
0x63dd:  a1 01          cp A, #$01                               cycles=1
0x63df:  26 e9          jrne $63ca  (offset=-23)                 cycles=1-2
0x63e1:  c6 54 2e       ld A, $542e                              cycles=1
0x63e4:  72 1a 54 24    bset $5424, #5                           cycles=1
0x63e8:  a1 04          cp A, #$04                               cycles=1
0x63ea:  26 05          jrne $63f1  (offset=5)                   cycles=1-2
0x63ec:  ae 41 23       ldw X, #$4123                            cycles=2
0x63ef:  20 19          jra $640a  (offset=25)                   cycles=2
0x63f1:  a1 03          cp A, #$03                               cycles=1
0x63f3:  26 05          jrne $63fa  (offset=5)                   cycles=1-2
0x63f5:  ae 43 23       ldw X, #$4323                            cycles=2
0x63f8:  20 10          jra $640a  (offset=16)                   cycles=2
0x63fa:  a1 02          cp A, #$02                               cycles=1
0x63fc:  26 05          jrne $6403  (offset=5)                   cycles=1-2
0x63fe:  ae 47 23       ldw X, #$4723                            cycles=2
0x6401:  20 07          jra $640a  (offset=7)                    cycles=2
0x6403:  a1 01          cp A, #$01                               cycles=1
0x6405:  26 c3          jrne $63ca  (offset=-61)                 cycles=1-2
0x6407:  ae 8f 23       ldw X, #$8f23                            cycles=2
0x640a:  bf 95          ldw $95,X                                cycles=2
0x640c:  a6 79          ld A, #$79                               cycles=1
0x640e:  cd 61 22       call $6122                               cycles=4
0x6411:  cd 61 03       call $6103                               cycles=4
0x6414:  cd 60 9b       call $609b                               cycles=4
0x6417:  a6 79          ld A, #$79                               cycles=1
0x6419:  cd 61 22       call $6122                               cycles=4
0x641c:  cc 63 23       jp $6323                                 cycles=1
0x641f:  72 1a 54 24    bset $5424, #5                           cycles=1
0x6423:  a6 79          ld A, #$79                               cycles=1
0x6425:  cd 61 22       call $6122                               cycles=4
0x6428:  a6 05          ld A, #$05                               cycles=1
0x642a:  72 03 00 8e 01 btjf $8e, #1, $6430  (offset=1)          cycles=2-3
0x642f:  4c             inc A                                    cycles=1
0x6430:  cd 61 22       call $6122                               cycles=4
0x6433:  a6 22          ld A, #$22                               cycles=1
0x6435:  cd 61 22       call $6122                               cycles=4
0x6438:  a6 00          ld A, #$00                               cycles=1
0x643a:  cd 61 22       call $6122                               cycles=4
0x643d:  72 03 00 8e 05 btjf $8e, #1, $6447  (offset=5)          cycles=2-3
0x6442:  a6 03          ld A, #$03                               cycles=1
0x6444:  cd 61 22       call $6122                               cycles=4
0x6447:  a6 11          ld A, #$11                               cycles=1
0x6449:  cd 61 22       call $6122                               cycles=4
0x644c:  a6 21          ld A, #$21                               cycles=1
0x644e:  cd 61 22       call $6122                               cycles=4
0x6451:  a6 31          ld A, #$31                               cycles=1
0x6453:  cd 61 22       call $6122                               cycles=4
0x6456:  a6 43          ld A, #$43                               cycles=1
0x6458:  cd 61 22       call $6122                               cycles=4
0x645b:  a6 79          ld A, #$79                               cycles=1
0x645d:  cd 61 22       call $6122                               cycles=4
0x6460:  cc 63 23       jp $6323                                 cycles=1
0x6463:  72 02 00 8e 0b btjt $8e, #1, $6473  (offset=11)         cycles=2-3
0x6468:  a6 79          ld A, #$79                               cycles=1
0x646a:  cd 61 22       call $6122                               cycles=4
0x646d:  ae 66 a1       ldw X, #$66a1                            cycles=2
0x6470:  cc 63 26       jp $6326                                 cycles=1
0x6473:  c6 54 29       ld A, $5429                              cycles=1
0x6476:  a1 05          cp A, #$05                               cycles=1
0x6478:  26 2e          jrne $64a8  (offset=46)                  cycles=1-2
0x647a:  cd 66 de       call $66de                               cycles=4
0x647d:  cc 66 fa       jp $66fa                                 cycles=1
0x6480:  b7 88          ld $88,A                                 cycles=1
0x6482:  ae 64 88       ldw X, #$6488                            cycles=2
0x6485:  cc 63 26       jp $6326                                 cycles=1
0x6488:  b7 89          ld $89,A                                 cycles=1
0x648a:  b8 88          xor A, $88                               cycles=1
0x648c:  a1 ff          cp A, #$ff                               cycles=1
0x648e:  26 18          jrne $64a8  (offset=24)                  cycles=1-2
0x6490:  a6 79          ld A, #$79                               cycles=1
0x6492:  cd 61 22       call $6122                               cycles=4
0x6495:  5f             clrw X                                   cycles=1
0x6496:  cd 60 8a       call $608a                               cycles=4
0x6499:  92 af 00 8a    ldf A, ([$8a.e],X)                       cycles=4
0x649d:  cd 61 22       call $6122                               cycles=4
0x64a0:  9f             ld A, XL                                 cycles=1
0x64a1:  b1 88          cp A, $88                                cycles=1
0x64a3:  27 06          jreq $64ab  (offset=6)                   cycles=1-2
0x64a5:  5c             incw X                                   cycles=1
0x64a6:  20 ee          jra $6496  (offset=-18)                  cycles=2
0x64a8:  cc 63 ca       jp $63ca                                 cycles=1
0x64ab:  cc 63 23       jp $6323                                 cycles=1
0x64ae:  72 02 00 8e 0b btjt $8e, #1, $64be  (offset=11)         cycles=2-3
0x64b3:  a6 79          ld A, #$79                               cycles=1
0x64b5:  cd 61 22       call $6122                               cycles=4
0x64b8:  ae 64 d4       ldw X, #$64d4                            cycles=2
0x64bb:  cc 63 26       jp $6326                                 cycles=1
0x64be:  c6 54 29       ld A, $5429                              cycles=1
0x64c1:  27 56          jreq $6519  (offset=86)                  cycles=1-2
0x64c3:  4a             dec A                                    cycles=1
0x64c4:  b7 88          ld $88,A                                 cycles=1
0x64c6:  c6 54 2e       ld A, $542e                              cycles=1
0x64c9:  a1 ff          cp A, #$ff                               cycles=1
0x64cb:  26 6e          jrne $653b  (offset=110)                 cycles=1-2
0x64cd:  72 18 00 8e    bset $8e, #4                             cycles=1
0x64d1:  cc 65 6e       jp $656e                                 cycles=1
0x64d4:  b7 88          ld $88,A                                 cycles=1
0x64d6:  a1 ff          cp A, #$ff                               cycles=1
0x64d8:  26 11          jrne $64eb  (offset=17)                  cycles=1-2
0x64da:  ae 64 e0       ldw X, #$64e0                            cycles=2
0x64dd:  cc 63 26       jp $6326                                 cycles=1
0x64e0:  a1 00          cp A, #$00                               cycles=1
0x64e2:  26 35          jrne $6519  (offset=53)                  cycles=1-2
0x64e4:  72 18 00 8e    bset $8e, #4                             cycles=1
0x64e8:  cc 65 77       jp $6577                                 cycles=1
0x64eb:  90 5f          clrw Y                                   cycles=1
0x64ed:  a1 82          cp A, #$82                               cycles=1
0x64ef:  24 02          jrnc $64f3  (offset=2)                   cycles=1-2
0x64f1:  20 1c          jra $650f  (offset=28)                   cycles=2
0x64f3:  ae 64 f9       ldw X, #$64f9                            cycles=2
0x64f6:  cc 63 26       jp $6326                                 cycles=1
0x64f9:  90 9f          ld A, YL                                 cycles=1
0x64fb:  b1 88          cp A, $88                                cycles=1
0x64fd:  27 08          jreq $6507  (offset=8)                   cycles=1-2
0x64ff:  90 5c          incw Y                                   cycles=1
0x6501:  ae 64 f9       ldw X, #$64f9                            cycles=2
0x6504:  cc 63 26       jp $6326                                 cycles=1
0x6507:  ae 65 0d       ldw X, #$650d                            cycles=2
0x650a:  cc 63 26       jp $6326                                 cycles=1
0x650d:  20 0a          jra $6519  (offset=10)                   cycles=2
0x650f:  b6 88          ld A, $88                                cycles=1
0x6511:  b7 8f          ld $8f,A                                 cycles=1
0x6513:  ae 65 1c       ldw X, #$651c                            cycles=2
0x6516:  cc 63 26       jp $6326                                 cycles=1
0x6519:  cc 63 ca       jp $63ca                                 cycles=1
0x651c:  a1 82          cp A, #$82                               cycles=1
0x651e:  24 02          jrnc $6522  (offset=2)                   cycles=1-2
0x6520:  20 04          jra $6526  (offset=4)                    cycles=2
0x6522:  72 1e 00 8e    bset $8e, #7                             cycles=1
0x6526:  90 e7 00       ld ($00,Y),A                             cycles=1
0x6529:  b8 8f          xor A, $8f                               cycles=1
0x652b:  b7 8f          ld $8f,A                                 cycles=1
0x652d:  90 9f          ld A, YL                                 cycles=1
0x652f:  b1 88          cp A, $88                                cycles=1
0x6531:  27 1e          jreq $6551  (offset=30)                  cycles=1-2
0x6533:  90 5c          incw Y                                   cycles=1
0x6535:  ae 65 1c       ldw X, #$651c                            cycles=2
0x6538:  cc 63 26       jp $6326                                 cycles=1
0x653b:  72 19 00 8e    bres $8e, #4                             cycles=1
0x653f:  5f             clrw X                                   cycles=1
0x6540:  d6 54 2e       ld A, ($542e,X)                          cycles=1
0x6543:  a1 82          cp A, #$82                               cycles=1
0x6545:  24 d2          jrnc $6519  (offset=-46)                 cycles=1-2
0x6547:  e7 00          ld ($00,X),A                             cycles=1
0x6549:  9f             ld A, XL                                 cycles=1
0x654a:  b1 88          cp A, $88                                cycles=1
0x654c:  27 20          jreq $656e  (offset=32)                  cycles=1-2
0x654e:  5c             incw X                                   cycles=1
0x654f:  20 ef          jra $6540  (offset=-17)                  cycles=2
0x6551:  ae 65 57       ldw X, #$6557                            cycles=2
0x6554:  cc 63 26       jp $6326                                 cycles=1
0x6557:  72 0f 00 8e 06 btjf $8e, #7, $6562  (offset=6)          cycles=2-3
0x655c:  72 1f 00 8e    bres $8e, #7                             cycles=1
0x6560:  20 b7          jra $6519  (offset=-73)                  cycles=2
0x6562:  72 19 00 8e    bres $8e, #4                             cycles=1
0x6566:  b7 89          ld $89,A                                 cycles=1
0x6568:  b8 8f          xor A, $8f                               cycles=1
0x656a:  27 0b          jreq $6577  (offset=11)                  cycles=1-2
0x656c:  20 ab          jra $6519  (offset=-85)                  cycles=2
0x656e:  72 1a 54 24    bset $5424, #5                           cycles=1
0x6572:  a6 79          ld A, #$79                               cycles=1
0x6574:  cd 61 22       call $6122                               cycles=4
0x6577:  cd 00 a0       call $a0                                 cycles=4
0x657a:  b6 9b          ld A, $9b                                cycles=1
0x657c:  26 9b          jrne $6519  (offset=-101)                cycles=1-2
0x657e:  a6 79          ld A, #$79                               cycles=1
0x6580:  cd 61 22       call $6122                               cycles=4
0x6583:  cc 63 23       jp $6323                                 cycles=1
0x6586:  72 02 00 8e 0b btjt $8e, #1, $6596  (offset=11)         cycles=2-3
0x658b:  a6 79          ld A, #$79                               cycles=1
0x658d:  cd 61 22       call $6122                               cycles=4
0x6590:  ae 66 a1       ldw X, #$66a1                            cycles=2
0x6593:  cc 63 26       jp $6326                                 cycles=1
0x6596:  c6 54 29       ld A, $5429                              cycles=1
0x6599:  a1 04          cp A, #$04                               cycles=1
0x659b:  26 14          jrne $65b1  (offset=20)                  cycles=1-2
0x659d:  cd 66 de       call $66de                               cycles=4
0x65a0:  cc 66 fa       jp $66fa                                 cycles=1
0x65a3:  5f             clrw X                                   cycles=1
0x65a4:  4f             clr A                                    cycles=1
0x65a5:  e7 a0          ld ($a0,X),A                             cycles=1
0x65a7:  5c             incw X                                   cycles=1
0x65a8:  a3 01 60       cpw X, #$160                             cycles=2
0x65ab:  26 f8          jrne $65a5  (offset=-8)                  cycles=1-2
0x65ad:  cd 63 0f       call $630f                               cycles=4
0x65b0:  81             ret                                      cycles=4
0x65b1:  cc 63 ca       jp $63ca                                 cycles=1
0x65b4:  72 02 00 8e 0b btjt $8e, #1, $65c4  (offset=11)         cycles=2-3
0x65b9:  a6 79          ld A, #$79                               cycles=1
0x65bb:  cd 61 22       call $6122                               cycles=4
0x65be:  ae 66 a1       ldw X, #$66a1                            cycles=2
0x65c1:  cc 63 26       jp $6326                                 cycles=1
0x65c4:  c6 54 29       ld A, $5429                              cycles=1
0x65c7:  a1 05          cp A, #$05                               cycles=1
0x65c9:  26 34          jrne $65ff  (offset=52)                  cycles=1-2
0x65cb:  cd 66 de       call $66de                               cycles=4
0x65ce:  b6 88          ld A, $88                                cycles=1
0x65d0:  2b 2d          jrmi $65ff  (offset=45)                  cycles=1-2
0x65d2:  cc 66 fa       jp $66fa                                 cycles=1
0x65d5:  90 5f          clrw Y                                   cycles=1
0x65d7:  b7 88          ld $88,A                                 cycles=1
0x65d9:  2b 02          jrmi $65dd  (offset=2)                   cycles=1-2
0x65db:  20 1c          jra $65f9  (offset=28)                   cycles=2
0x65dd:  ae 65 e3       ldw X, #$65e3                            cycles=2
0x65e0:  cc 63 26       jp $6326                                 cycles=1
0x65e3:  90 9f          ld A, YL                                 cycles=1
0x65e5:  b1 88          cp A, $88                                cycles=1
0x65e7:  27 08          jreq $65f1  (offset=8)                   cycles=1-2
0x65e9:  90 5c          incw Y                                   cycles=1
0x65eb:  ae 65 e3       ldw X, #$65e3                            cycles=2
0x65ee:  cc 63 26       jp $6326                                 cycles=1
0x65f1:  ae 65 f7       ldw X, #$65f7                            cycles=2
0x65f4:  cc 63 26       jp $6326                                 cycles=1
0x65f7:  20 06          jra $65ff  (offset=6)                    cycles=2
0x65f9:  ae 66 02       ldw X, #$6602                            cycles=2
0x65fc:  cc 63 26       jp $6326                                 cycles=1
0x65ff:  cc 63 ca       jp $63ca                                 cycles=1
0x6602:  72 02 00 8e 0e btjt $8e, #1, $6615  (offset=14)         cycles=2-3
0x6607:  90 e7 00       ld ($00,Y),A                             cycles=1
0x660a:  90 9f          ld A, YL                                 cycles=1
0x660c:  b1 88          cp A, $88                                cycles=1
0x660e:  27 34          jreq $6644  (offset=52)                  cycles=1-2
0x6610:  90 5c          incw Y                                   cycles=1
0x6612:  cc 63 26       jp $6326                                 cycles=1
0x6615:  c6 54 29       ld A, $5429                              cycles=1
0x6618:  26 07          jrne $6621  (offset=7)                   cycles=1-2
0x661a:  72 1a 54 24    bset $5424, #5                           cycles=1
0x661e:  cc 63 26       jp $6326                                 cycles=1
0x6621:  b7 91          ld $91,A                                 cycles=1
0x6623:  5f             clrw X                                   cycles=1
0x6624:  d6 54 2e       ld A, ($542e,X)                          cycles=1
0x6627:  90 e7 00       ld ($00,Y),A                             cycles=1
0x662a:  5c             incw X                                   cycles=1
0x662b:  90 5c          incw Y                                   cycles=1
0x662d:  9f             ld A, XL                                 cycles=1
0x662e:  b1 91          cp A, $91                                cycles=1
0x6630:  26 f2          jrne $6624  (offset=-14)                 cycles=1-2
0x6632:  72 1a 54 24    bset $5424, #5                           cycles=1
0x6636:  90 9f          ld A, YL                                 cycles=1
0x6638:  b1 92          cp A, $92                                cycles=1
0x663a:  27 08          jreq $6644  (offset=8)                   cycles=1-2
0x663c:  22 c1          jrugt $65ff  (offset=-63)                cycles=1-2
0x663e:  ae 66 02       ldw X, #$6602                            cycles=2
0x6641:  cc 63 26       jp $6326                                 cycles=1
0x6644:  ae 66 4a       ldw X, #$664a                            cycles=2
0x6647:  cc 63 26       jp $6326                                 cycles=1
0x664a:  72 02 00 8e 04 btjt $8e, #1, $6653  (offset=4)          cycles=2-3
0x664f:  b7 89          ld $89,A                                 cycles=1
0x6651:  20 09          jra $665c  (offset=9)                    cycles=2
0x6653:  c6 54 2e       ld A, $542e                              cycles=1
0x6656:  b7 89          ld $89,A                                 cycles=1
0x6658:  72 1a 54 24    bset $5424, #5                           cycles=1
0x665c:  72 0b 00 8e 16 btjf $8e, #5, $6677  (offset=22)         cycles=2-3
0x6661:  b6 88          ld A, $88                                cycles=1
0x6663:  a1 7f          cp A, #$7f                               cycles=1
0x6665:  2b 10          jrmi $6677  (offset=16)                  cycles=1-2
0x6667:  b6 87          ld A, $87                                cycles=1
0x6669:  27 06          jreq $6671  (offset=6)                   cycles=1-2
0x666b:  a1 80          cp A, #$80                               cycles=1
0x666d:  27 02          jreq $6671  (offset=2)                   cycles=1-2
0x666f:  20 06          jra $6677  (offset=6)                    cycles=2
0x6671:  72 1c 00 8e    bset $8e, #6                             cycles=1
0x6675:  20 04          jra $667b  (offset=4)                    cycles=2
0x6677:  72 1d 00 8e    bres $8e, #6                             cycles=1
0x667b:  72 0b 00 8e 0a btjf $8e, #5, $668a  (offset=10)         cycles=2-3
0x6680:  cd 01 80       call $180                                cycles=4
0x6683:  b6 9c          ld A, $9c                                cycles=1
0x6685:  27 06          jreq $668d  (offset=6)                   cycles=1-2
0x6687:  cc 63 ca       jp $63ca                                 cycles=1
0x668a:  cd 67 a7       call $67a7                               cycles=4
0x668d:  cd 67 ba       call $67ba                               cycles=4
0x6690:  72 0f 00 8e f2 btjf $8e, #7, $6687  (offset=-14)        cycles=2-3
0x6695:  a6 79          ld A, #$79                               cycles=1
0x6697:  cd 61 22       call $6122                               cycles=4
0x669a:  72 1f 00 8e    bres $8e, #7                             cycles=1
0x669e:  cc 63 23       jp $6323                                 cycles=1
0x66a1:  b7 84          ld $84,A                                 cycles=1
0x66a3:  b7 8f          ld $8f,A                                 cycles=1
0x66a5:  ae 66 ab       ldw X, #$66ab                            cycles=2
0x66a8:  cc 63 26       jp $6326                                 cycles=1
0x66ab:  b7 85          ld $85,A                                 cycles=1
0x66ad:  b7 8a          ld $8a,A                                 cycles=1
0x66af:  b8 8f          xor A, $8f                               cycles=1
0x66b1:  b7 8f          ld $8f,A                                 cycles=1
0x66b3:  ae 66 b9       ldw X, #$66b9                            cycles=2
0x66b6:  cc 63 26       jp $6326                                 cycles=1
0x66b9:  b7 86          ld $86,A                                 cycles=1
0x66bb:  b7 8b          ld $8b,A                                 cycles=1
0x66bd:  b8 8f          xor A, $8f                               cycles=1
0x66bf:  b7 8f          ld $8f,A                                 cycles=1
0x66c1:  ae 66 c7       ldw X, #$66c7                            cycles=2
0x66c4:  cc 63 26       jp $6326                                 cycles=1
0x66c7:  b7 87          ld $87,A                                 cycles=1
0x66c9:  b7 8c          ld $8c,A                                 cycles=1
0x66cb:  b8 8f          xor A, $8f                               cycles=1
0x66cd:  b7 8f          ld $8f,A                                 cycles=1
0x66cf:  ae 66 d5       ldw X, #$66d5                            cycles=2
0x66d2:  cc 63 26       jp $6326                                 cycles=1
0x66d5:  b7 89          ld $89,A                                 cycles=1
0x66d7:  b8 8f          xor A, $8f                               cycles=1
0x66d9:  27 1f          jreq $66fa  (offset=31)                  cycles=1-2
0x66db:  cc 63 ca       jp $63ca                                 cycles=1
0x66de:  ce 54 2e       ldw X, $542e                             cycles=2
0x66e1:  bf 84          ldw $84,X                                cycles=2
0x66e3:  9f             ld A, XL                                 cycles=1
0x66e4:  b7 8a          ld $8a,A                                 cycles=1
0x66e6:  ce 54 30       ldw X, $5430                             cycles=2
0x66e9:  bf 86          ldw $86,X                                cycles=2
0x66eb:  bf 8b          ldw $8b,X                                cycles=2
0x66ed:  c6 54 32       ld A, $5432                              cycles=1
0x66f0:  b7 88          ld $88,A                                 cycles=1
0x66f2:  4c             inc A                                    cycles=1
0x66f3:  b7 92          ld $92,A                                 cycles=1
0x66f5:  72 1a 54 24    bset $5424, #5                           cycles=1
0x66f9:  81             ret                                      cycles=4
0x66fa:  3f 98          clr $98                                  cycles=1
0x66fc:  4f             clr A                                    cycles=1
0x66fd:  c7 50 5b       ld $505b,A                               cycles=1
0x6700:  43             cpl A                                    cycles=1
0x6701:  c7 50 5c       ld $505c,A                               cycles=1
0x6704:  b6 84          ld A, $84                                cycles=1
0x6706:  26 5b          jrne $6763  (offset=91)                  cycles=1-2
0x6708:  be 85          ldw X, $85                               cycles=2
0x670a:  a3 02 80       cpw X, #$280                             cycles=2
0x670d:  24 54          jrnc $6763  (offset=84)                  cycles=1-2
0x670f:  b6 85          ld A, $85                                cycles=1
0x6711:  27 06          jreq $6719  (offset=6)                   cycles=1-2
0x6713:  72 1a 00 8e    bset $8e, #5                             cycles=1
0x6717:  20 56          jra $676f  (offset=86)                   cycles=2
0x6719:  be 86          ldw X, $86                               cycles=2
0x671b:  a3 80 00       cpw X, #$8000                            cycles=2
0x671e:  25 06          jrc $6726  (offset=6)                    cycles=1-2
0x6720:  72 1a 00 8e    bset $8e, #5                             cycles=1
0x6724:  20 49          jra $676f  (offset=73)                   cycles=2
0x6726:  a3 58 00       cpw X, #$5800                            cycles=2
0x6729:  24 38          jrnc $6763  (offset=56)                  cycles=1-2
0x672b:  a3 50 00       cpw X, #$5000                            cycles=2
0x672e:  25 06          jrc $6736  (offset=6)                    cycles=1-2
0x6730:  72 1b 00 8e    bres $8e, #5                             cycles=1
0x6734:  20 39          jra $676f  (offset=57)                   cycles=2
0x6736:  a3 49 00       cpw X, #$4900                            cycles=2
0x6739:  24 28          jrnc $6763  (offset=40)                  cycles=1-2
0x673b:  a3 48 00       cpw X, #$4800                            cycles=2
0x673e:  25 13          jrc $6753  (offset=19)                   cycles=1-2
0x6740:  72 1a 00 8e    bset $8e, #5                             cycles=1
0x6744:  35 01 00 98    mov $98, #$01                            cycles=1
0x6748:  a6 80          ld A, #$80                               cycles=1
0x674a:  c7 50 5b       ld $505b,A                               cycles=1
0x674d:  43             cpl A                                    cycles=1
0x674e:  c7 50 5c       ld $505c,A                               cycles=1
0x6751:  20 1c          jra $676f  (offset=28)                   cycles=2
0x6753:  a3 48 00       cpw X, #$4800                            cycles=2
0x6756:  24 0b          jrnc $6763  (offset=11)                  cycles=1-2
0x6758:  a3 40 00       cpw X, #$4000                            cycles=2
0x675b:  25 09          jrc $6766  (offset=9)                    cycles=1-2
0x675d:  72 1a 00 8e    bset $8e, #5                             cycles=1
0x6761:  20 0c          jra $676f  (offset=12)                   cycles=2
0x6763:  cc 63 ca       jp $63ca                                 cycles=1
0x6766:  a3 18 00       cpw X, #$1800                            cycles=2
0x6769:  24 f8          jrnc $6763  (offset=-8)                  cycles=1-2
0x676b:  72 1b 00 8e    bres $8e, #5                             cycles=1
0x676f:  a6 79          ld A, #$79                               cycles=1
0x6771:  cd 61 22       call $6122                               cycles=4
0x6774:  b6 82          ld A, $82                                cycles=1
0x6776:  a1 31          cp A, #$31                               cycles=1
0x6778:  27 07          jreq $6781  (offset=7)                   cycles=1-2
0x677a:  a1 11          cp A, #$11                               cycles=1
0x677c:  27 18          jreq $6796  (offset=24)                  cycles=1-2
0x677e:  cc 65 a3       jp $65a3                                 cycles=1
0x6781:  72 02 00 8e 08 btjt $8e, #1, $678e  (offset=8)          cycles=2-3
0x6786:  ae 65 d5       ldw X, #$65d5                            cycles=2
0x6789:  3f 8f          clr $8f                                  cycles=1
0x678b:  cc 63 26       jp $6326                                 cycles=1
0x678e:  90 5f          clrw Y                                   cycles=1
0x6790:  ae 66 02       ldw X, #$6602                            cycles=2
0x6793:  cc 63 26       jp $6326                                 cycles=1
0x6796:  72 02 00 8e 08 btjt $8e, #1, $67a3  (offset=8)          cycles=2-3
0x679b:  ae 64 80       ldw X, #$6480                            cycles=2
0x679e:  3f 8f          clr $8f                                  cycles=1
0x67a0:  cc 63 26       jp $6326                                 cycles=1
0x67a3:  5f             clrw X                                   cycles=1
0x67a4:  cc 64 96       jp $6496                                 cycles=1
0x67a7:  5f             clrw X                                   cycles=1
0x67a8:  cd 60 8a       call $608a                               cycles=4
0x67ab:  e6 00          ld A, ($00,X)                            cycles=1
0x67ad:  92 a7 00 8a    ldf ([$8a.e],X),A                        cycles=4
0x67b1:  9f             ld A, XL                                 cycles=1
0x67b2:  b1 88          cp A, $88                                cycles=1
0x67b4:  27 03          jreq $67b9  (offset=3)                   cycles=1-2
0x67b6:  5c             incw X                                   cycles=1
0x67b7:  20 ef          jra $67a8  (offset=-17)                  cycles=2
0x67b9:  81             ret                                      cycles=4
0x67ba:  5f             clrw X                                   cycles=1
0x67bb:  b6 88          ld A, $88                                cycles=1
0x67bd:  b7 8f          ld $8f,A                                 cycles=1
0x67bf:  cd 60 8a       call $608a                               cycles=4
0x67c2:  92 af 00 8a    ldf A, ([$8a.e],X)                       cycles=4
0x67c6:  b8 8f          xor A, $8f                               cycles=1
0x67c8:  b7 8f          ld $8f,A                                 cycles=1
0x67ca:  9f             ld A, XL                                 cycles=1
0x67cb:  b1 88          cp A, $88                                cycles=1
0x67cd:  27 03          jreq $67d2  (offset=3)                   cycles=1-2
0x67cf:  5c             incw X                                   cycles=1
0x67d0:  20 ed          jra $67bf  (offset=-19)                  cycles=2
0x67d2:  b6 89          ld A, $89                                cycles=1
0x67d4:  b1 8f          cp A, $8f                                cycles=1
0x67d6:  26 06          jrne $67de  (offset=6)                   cycles=1-2
0x67d8:  72 1e 00 8e    bset $8e, #7                             cycles=1
0x67dc:  20 04          jra $67e2  (offset=4)                    cycles=2
0x67de:  72 1f 00 8e    bres $8e, #7                             cycles=1
0x67e2:  81             ret                                      cycles=4
0x67e3:  71             ???                                      cycles=?
0x67e4:  71             ???                                      cycles=?
0x67e5:  71             ???                                      cycles=?
0x67e6:  71             ???                                      cycles=?
0x67e7:  71             ???                                      cycles=?
0x67e8:  71             ???                                      cycles=?
0x67e9:  71             ???                                      cycles=?
0x67ea:  71             ???                                      cycles=?
0x67eb:  71             ???                                      cycles=?
0x67ec:  71             ???                                      cycles=?
0x67ed:  71             ???                                      cycles=?
0x67ee:  71             ???                                      cycles=?
0x67ef:  22 37          jrugt $6828  (offset=55)                 cycles=1-2
0x67f1:  39 41          rlc $41                                  cycles=1
0x67f3:  42             mul X, A                                 cycles=4
0x67f4:  46             rrc A                                    cycles=1
0x67f5:  38 30          sll $30                                  cycles=1
0x67f7:  31 32 38       exg A, $3238                             cycles=3
0x67fa:  00 09          neg ($09,SP)                             cycles=1
0x67fc:  9a             rim                                      cycles=1
0x67fd:  a2 9e          sbc A, #$9e                              cycles=1
0x67ff:  8c             ccf                                      cycles=1
