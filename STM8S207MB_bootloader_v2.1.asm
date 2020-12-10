
naken_util - by Michael Kohn
                Joe Davisson
    Web: http://www.mikekohn.net/
  Email: mike@mikekohn.net

Version: January 20, 2020

Loaded hexfile STM8S207MB_bootloader_v2.1.hex from 0x6000 to 0x67ff
Type help for a list of commands.

Addr    Opcode Instruction                              Cycles
------- ------ ----------------------------------       ------
0x6000:  9b             sim                                      cycles=1
0x6001:  c6 80 00       ld A, $8000                              cycles=1
0x6004:  a1 82          cp A, #$82                               cycles=1
0x6006:  27 08          jreq $6010  (offset=8)                   cycles=1-2
0x6008:  a1 ac          cp A, #$ac                               cycles=1
0x600a:  27 04          jreq $6010  (offset=4)                   cycles=1-2
0x600c:  3f 99          clr $99                                  cycles=1
0x600e:  20 0e          jra $601e  (offset=14)                   cycles=2
0x6010:  a6 01          ld A, #$01                               cycles=1
0x6012:  b7 99          ld $99,A                                 cycles=1
0x6014:  ce 48 7e       ldw X, $487e                             cycles=2
0x6017:  a3 55 aa       cpw X, #$55aa                            cycles=2
0x601a:  27 02          jreq $601e  (offset=2)                   cycles=1-2
0x601c:  20 07          jra $6025  (offset=7)                    cycles=2
0x601e:  c6 48 00       ld A, $4800                              cycles=1
0x6021:  a1 aa          cp A, #$aa                               cycles=1
0x6023:  26 09          jrne $602e  (offset=9)                   cycles=1-2
0x6025:  5f             clrw X                                   cycles=1
0x6026:  4f             clr A                                    cycles=1
0x6027:  4b 28          push #$28                                cycles=1
0x6029:  86             pop CC                                   cycles=1
0x602a:  ac 00 80 00    jpf $8000                                cycles=2
0x602e:  ad 5c          callr $608c  (offset=92)                 cycles=4
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
0x6052:  ad 49          callr $609d  (offset=73)                 cycles=4
0x6054:  72 18 50 03    bset $5003, #4                           cycles=1
0x6058:  72 1c 50 12    bset $5012, #6                           cycles=1
0x605c:  3f 8e          clr $8e                                  cycles=1
0x605e:  a6 01          ld A, #$01                               cycles=1
0x6060:  b7 9a          ld $9a,A                                 cycles=1
0x6062:  b7 9b          ld $9b,A                                 cycles=1
0x6064:  cd 61 6e       call $616e                               cycles=4
0x6067:  72 06 00 8e 04 btjt $8e, #3, $6070  (offset=4)          cycles=2-3
0x606c:  ac 00 80 00    jpf $8000                                cycles=2
0x6070:  35 56 50 62    mov $5062, #$56                          cycles=1
0x6074:  35 ae 50 62    mov $5062, #$ae                          cycles=1
0x6078:  35 ae 50 64    mov $5064, #$ae                          cycles=1
0x607c:  35 56 50 64    mov $5064, #$56                          cycles=1
0x6080:  a6 79          ld A, #$79                               cycles=1
0x6082:  cd 61 16       call $6116                               cycles=4
0x6085:  cd 63 21       call $6321                               cycles=4
0x6088:  92 ac 00 8a    jpf [$8a.e]                              cycles=6
0x608c:  35 55 50 e0    mov $50e0, #$55                          cycles=1
0x6090:  35 05 50 e1    mov $50e1, #$05                          cycles=1
0x6094:  35 aa 50 e0    mov $50e0, #$aa                          cycles=1
0x6098:  35 7f 50 d1    mov $50d1, #$7f                          cycles=1
0x609c:  81             ret                                      cycles=4
0x609d:  72 1a 54 20    bset $5420, #5                           cycles=1
0x60a1:  9d             nop                                      cycles=1
0x60a2:  9d             nop                                      cycles=1
0x60a3:  72 10 54 20    bset $5420, #0                           cycles=1
0x60a7:  72 02 54 21 fb btjt $5421, #1, $60a7  (offset=-5)       cycles=2-3
0x60ac:  72 01 54 21 f6 btjf $5421, #0, $60a7  (offset=-10)      cycles=2-3
0x60b1:  a6 0f          ld A, #$0f                               cycles=1
0x60b3:  c7 54 25       ld $5425,A                               cycles=1
0x60b6:  a6 06          ld A, #$06                               cycles=1
0x60b8:  c7 54 27       ld $5427,A                               cycles=1
0x60bb:  be 95          ldw X, $95                               cycles=2
0x60bd:  cf 54 2c       ldw $542c,X                              cycles=2
0x60c0:  72 14 54 20    bset $5420, #2                           cycles=1
0x60c4:  72 16 54 20    bset $5420, #3                           cycles=1
0x60c8:  72 18 54 20    bset $5420, #4                           cycles=1
0x60cc:  4f             clr A                                    cycles=1
0x60cd:  c7 54 30       ld $5430,A                               cycles=1
0x60d0:  c7 54 32       ld $5432,A                               cycles=1
0x60d3:  c7 54 34       ld $5434,A                               cycles=1
0x60d6:  c7 54 35       ld $5435,A                               cycles=1
0x60d9:  c7 54 26       ld $5426,A                               cycles=1
0x60dc:  a6 01          ld A, #$01                               cycles=1
0x60de:  c7 54 32       ld $5432,A                               cycles=1
0x60e1:  4f             clr A                                    cycles=1
0x60e2:  c7 54 25       ld $5425,A                               cycles=1
0x60e5:  a6 00          ld A, #$00                               cycles=1
0x60e7:  c7 54 20       ld $5420,A                               cycles=1
0x60ea:  9d             nop                                      cycles=1
0x60eb:  ae 19 00       ldw X, #$1900                            cycles=2
0x60ee:  5a             decw X                                   cycles=1
0x60ef:  27 05          jreq $60f6  (offset=5)                   cycles=1-2
0x60f1:  72 00 54 21 f8 btjt $5421, #0, $60ee  (offset=-8)       cycles=2-3
0x60f6:  81             ret                                      cycles=4
0x60f7:  72 12 54 20    bset $5420, #1                           cycles=1
0x60fb:  72 03 54 21 fb btjf $5421, #1, $60fb  (offset=-5)       cycles=2-3
0x6100:  81             ret                                      cycles=4
0x6101:  b6 00          ld A, $00                                cycles=1
0x6103:  c7 54 27       ld $5427,A                               cycles=1
0x6106:  72 12 54 28    bset $5428, #1                           cycles=1
0x610a:  72 1a 54 24    bset $5424, #5                           cycles=1
0x610e:  c6 54 24       ld A, $5424                              cycles=1
0x6111:  a4 03          and A, #$03                              cycles=1
0x6113:  26 f5          jrne $610a  (offset=-11)                 cycles=1-2
0x6115:  81             ret                                      cycles=4
0x6116:  b7 8d          ld $8d,A                                 cycles=1
0x6118:  72 01 00 8e 0f btjf $8e, #0, $612c  (offset=15)         cycles=2-3
0x611d:  c6 52 30       ld A, $5230                              cycles=1
0x6120:  b6 8d          ld A, $8d                                cycles=1
0x6122:  c7 52 31       ld $5231,A                               cycles=1
0x6125:  72 0d 52 30 fb btjf $5230, #6, $6125  (offset=-5)       cycles=2-3
0x612a:  20 41          jra $616d  (offset=65)                   cycles=2
0x612c:  72 03 00 8e 26 btjf $8e, #1, $6157  (offset=38)         cycles=2-3
0x6131:  a6 00          ld A, #$00                               cycles=1
0x6133:  c7 54 27       ld $5427,A                               cycles=1
0x6136:  a6 01          ld A, #$01                               cycles=1
0x6138:  c7 54 29       ld $5429,A                               cycles=1
0x613b:  90 ae 00 08    ldw Y, #$8                               cycles=2
0x613f:  90 cf 54 2a    ldw $542a,Y                              cycles=2
0x6143:  b6 8d          ld A, $8d                                cycles=1
0x6145:  c7 54 2e       ld $542e,A                               cycles=1
0x6148:  a6 01          ld A, #$01                               cycles=1
0x614a:  c7 54 28       ld $5428,A                               cycles=1
0x614d:  cd 60 8c       call $608c                               cycles=4
0x6150:  72 05 54 28 f8 btjf $5428, #2, $614d  (offset=-8)       cycles=2-3
0x6155:  20 16          jra $616d  (offset=22)                   cycles=2
0x6157:  c6 52 40       ld A, $5240                              cycles=1
0x615a:  b6 8d          ld A, $8d                                cycles=1
0x615c:  c7 52 41       ld $5241,A                               cycles=1
0x615f:  72 0d 52 40 fb btjf $5240, #6, $615f  (offset=-5)       cycles=2-3
0x6164:  9d             nop                                      cycles=1
0x6165:  72 0b 52 40 fb btjf $5240, #5, $6165  (offset=-5)       cycles=2-3
0x616a:  c6 52 41       ld A, $5241                              cycles=1
0x616d:  81             ret                                      cycles=4
0x616e:  a6 08          ld A, #$08                               cycles=1
0x6170:  c7 53 2a       ld $532a,A                               cycles=1
0x6173:  72 10 53 20    bset $5320, #0                           cycles=1
0x6177:  72 01 53 22 fb btjf $5322, #0, $6177  (offset=-5)       cycles=2-3
0x617c:  4f             clr A                                    cycles=1
0x617d:  c7 53 22       ld $5322,A                               cycles=1
0x6180:  72 10 53 20    bset $5320, #0                           cycles=1
0x6184:  72 0c 50 10 7c btjt $5010, #6, $6205  (offset=124)      cycles=2-3
0x6189:  72 01 00 9b 77 btjf $9b, #0, $6205  (offset=119)        cycles=2-3
0x618e:  ae 04 60       ldw X, #$460                             cycles=2
0x6191:  5a             decw X                                   cycles=1
0x6192:  27 18          jreq $61ac  (offset=24)                  cycles=1-2
0x6194:  72 0d 50 10 f8 btjf $5010, #6, $6191  (offset=-8)       cycles=2-3
0x6199:  72 10 53 00    bset $5300, #0                           cycles=1
0x619d:  72 0c 50 10 fb btjt $5010, #6, $619d  (offset=-5)       cycles=2-3
0x61a2:  ce 53 0a       ldw X, $530a                             cycles=2
0x61a5:  72 14 00 8e    bset $8e, #2                             cycles=1
0x61a9:  cc 62 77       jp $6277                                 cycles=1
0x61ac:  3f 9b          clr $9b                                  cycles=1
0x61ae:  20 55          jra $6205  (offset=85)                   cycles=2
0x61b0:  72 08 50 01 cf btjt $5001, #4, $6184  (offset=-49)      cycles=2-3
0x61b5:  72 01 00 9a ca btjf $9a, #0, $6184  (offset=-54)        cycles=2-3
0x61ba:  ae 04 60       ldw X, #$460                             cycles=2
0x61bd:  5a             decw X                                   cycles=1
0x61be:  27 18          jreq $61d8  (offset=24)                  cycles=1-2
0x61c0:  72 09 50 01 f8 btjf $5001, #4, $61bd  (offset=-8)       cycles=2-3
0x61c5:  72 10 53 00    bset $5300, #0                           cycles=1
0x61c9:  72 08 50 01 fb btjt $5001, #4, $61c9  (offset=-5)       cycles=2-3
0x61ce:  ce 53 0a       ldw X, $530a                             cycles=2
0x61d1:  72 10 00 8e    bset $8e, #0                             cycles=1
0x61d5:  cc 62 77       jp $6277                                 cycles=1
0x61d8:  3f 9a          clr $9a                                  cycles=1
0x61da:  20 a8          jra $6184  (offset=-88)                  cycles=2
0x61dc:  72 01 00 9a 05 btjf $9a, #0, $61e6  (offset=5)          cycles=2-3
0x61e1:  72 09 50 01 d4 btjf $5001, #4, $61ba  (offset=-44)      cycles=2-3
0x61e6:  72 01 00 9b 05 btjf $9b, #0, $61f0  (offset=5)          cycles=2-3
0x61eb:  72 0d 50 10 9e btjf $5010, #6, $618e  (offset=-98)      cycles=2-3
0x61f0:  72 00 53 22 02 btjt $5322, #0, $61f7  (offset=2)        cycles=2-3
0x61f5:  20 b9          jra $61b0  (offset=-71)                  cycles=2
0x61f7:  72 00 00 99 02 btjt $99, #0, $61fe  (offset=2)          cycles=2-3
0x61fc:  20 b2          jra $61b0  (offset=-78)                  cycles=2
0x61fe:  72 17 00 8e    bres $8e, #3                             cycles=1
0x6202:  cc 62 df       jp $62df                                 cycles=1
0x6205:  72 01 00 9a 05 btjf $9a, #0, $620f  (offset=5)          cycles=2-3
0x620a:  72 09 50 01 ab btjf $5001, #4, $61ba  (offset=-85)      cycles=2-3
0x620f:  35 55 50 e0    mov $50e0, #$55                          cycles=1
0x6213:  35 05 50 e1    mov $50e1, #$05                          cycles=1
0x6217:  35 aa 50 e0    mov $50e0, #$aa                          cycles=1
0x621b:  35 7f 50 d1    mov $50d1, #$7f                          cycles=1
0x621f:  72 00 00 97 02 btjt $97, #0, $6226  (offset=2)          cycles=2-3
0x6224:  20 b6          jra $61dc  (offset=-74)                  cycles=2
0x6226:  72 01 00 9a 05 btjf $9a, #0, $6230  (offset=5)          cycles=2-3
0x622b:  72 09 50 01 8a btjf $5001, #4, $61ba  (offset=-118)     cycles=2-3
0x6230:  c6 54 24       ld A, $5424                              cycles=1
0x6233:  a4 03          and A, #$03                              cycles=1
0x6235:  26 02          jrne $6239  (offset=2)                   cycles=1-2
0x6237:  20 a3          jra $61dc  (offset=-93)                  cycles=2
0x6239:  72 09 54 24 09 btjf $5424, #4, $6247  (offset=9)        cycles=2-3
0x623e:  72 19 54 24    bres $5424, #4                           cycles=1
0x6242:  cd 61 01       call $6101                               cycles=4
0x6245:  20 95          jra $61dc  (offset=-107)                 cycles=2
0x6247:  a6 06          ld A, #$06                               cycles=1
0x6249:  c7 54 27       ld $5427,A                               cycles=1
0x624c:  c6 54 28       ld A, $5428                              cycles=1
0x624f:  a4 70          and A, #$70                              cycles=1
0x6251:  27 06          jreq $6259  (offset=6)                   cycles=1-2
0x6253:  72 1a 54 24    bset $5424, #5                           cycles=1
0x6257:  20 83          jra $61dc  (offset=-125)                 cycles=2
0x6259:  a6 07          ld A, #$07                               cycles=1
0x625b:  c7 54 27       ld $5427,A                               cycles=1
0x625e:  ce 54 2a       ldw X, $542a                             cycles=2
0x6261:  72 1a 54 24    bset $5424, #5                           cycles=1
0x6265:  54             srlw X                                   cycles=2
0x6266:  54             srlw X                                   cycles=2
0x6267:  9f             ld A, XL                                 cycles=1
0x6268:  a1 7f          cp A, #$7f                               cycles=1
0x626a:  27 03          jreq $626f  (offset=3)                   cycles=1-2
0x626c:  cc 61 dc       jp $61dc                                 cycles=1
0x626f:  72 12 00 8e    bset $8e, #1                             cycles=1
0x6273:  72 1a 54 24    bset $5424, #5                           cycles=1
0x6277:  72 16 00 8e    bset $8e, #3                             cycles=1
0x627b:  72 02 00 8e 5f btjt $8e, #1, $62df  (offset=95)         cycles=2-3
0x6280:  a3 00 c3       cpw X, #$c3                              cycles=2
0x6283:  25 05          jrc $628a  (offset=5)                    cycles=1-2
0x6285:  1c 00 04       addw X, #$4                              cycles=2
0x6288:  20 03          jra $628d  (offset=3)                    cycles=2
0x628a:  1c 00 06       addw X, #$6                              cycles=2
0x628d:  a6 07          ld A, #$07                               cycles=1
0x628f:  62             div X, A                                 cycles=2-17
0x6290:  a6 10          ld A, #$10                               cycles=1
0x6292:  62             div X, A                                 cycles=2-17
0x6293:  b7 94          ld $94,A                                 cycles=1
0x6295:  9f             ld A, XL                                 cycles=1
0x6296:  b7 93          ld $93,A                                 cycles=1
0x6298:  72 01 00 97 03 btjf $97, #0, $62a0  (offset=3)          cycles=2-3
0x629d:  cd 60 f7       call $60f7                               cycles=4
0x62a0:  72 00 00 8e 1c btjt $8e, #0, $62c1  (offset=28)         cycles=2-3
0x62a5:  72 1d 50 12    bres $5012, #6                           cycles=1
0x62a9:  72 16 52 45    bset $5245, #3                           cycles=1
0x62ad:  72 14 52 45    bset $5245, #2                           cycles=1
0x62b1:  72 1a 52 49    bset $5249, #5                           cycles=1
0x62b5:  b6 94          ld A, $94                                cycles=1
0x62b7:  c7 52 43       ld $5243,A                               cycles=1
0x62ba:  b6 93          ld A, $93                                cycles=1
0x62bc:  c7 52 42       ld $5242,A                               cycles=1
0x62bf:  20 1e          jra $62df  (offset=30)                   cycles=2
0x62c1:  72 19 50 03    bres $5003, #4                           cycles=1
0x62c5:  72 16 52 35    bset $5235, #3                           cycles=1
0x62c9:  72 14 52 35    bset $5235, #2                           cycles=1
0x62cd:  72 18 52 34    bset $5234, #4                           cycles=1
0x62d1:  72 14 52 34    bset $5234, #2                           cycles=1
0x62d5:  b6 94          ld A, $94                                cycles=1
0x62d7:  c7 52 33       ld $5233,A                               cycles=1
0x62da:  b6 93          ld A, $93                                cycles=1
0x62dc:  c7 52 32       ld $5232,A                               cycles=1
0x62df:  4f             clr A                                    cycles=1
0x62e0:  c7 53 00       ld $5300,A                               cycles=1
0x62e3:  c7 53 20       ld $5320,A                               cycles=1
0x62e6:  c7 53 22       ld $5322,A                               cycles=1
0x62e9:  c7 53 2a       ld $532a,A                               cycles=1
0x62ec:  72 06 00 8e 2f btjt $8e, #3, $6320  (offset=47)         cycles=2-3
0x62f1:  72 19 50 03    bres $5003, #4                           cycles=1
0x62f5:  72 1d 50 12    bres $5012, #6                           cycles=1
0x62f9:  72 01 00 97 16 btjf $97, #0, $6314  (offset=22)         cycles=2-3
0x62fe:  5f             clrw X                                   cycles=1
0x62ff:  bf 95          ldw $95,X                                cycles=2
0x6301:  cd 60 9d       call $609d                               cycles=4
0x6304:  4f             clr A                                    cycles=1
0x6305:  c7 54 32       ld $5432,A                               cycles=1
0x6308:  c7 54 27       ld $5427,A                               cycles=1
0x630b:  c7 54 20       ld $5420,A                               cycles=1
0x630e:  cd 60 f7       call $60f7                               cycles=4
0x6311:  c7 54 21       ld $5421,A                               cycles=1
0x6314:  c7 50 c1       ld $50c1,A                               cycles=1
0x6317:  35 18 50 c6    mov $50c6, #$18                          cycles=1
0x631b:  5f             clrw X                                   cycles=1
0x631c:  35 7f 50 d1    mov $50d1, #$7f                          cycles=1
0x6320:  81             ret                                      cycles=4
0x6321:  ae 63 7a       ldw X, #$637a                            cycles=2
0x6324:  cd 60 8c       call $608c                               cycles=4
0x6327:  72 00 00 8e 0f btjt $8e, #0, $633b  (offset=15)         cycles=2-3
0x632c:  72 02 00 8e 21 btjt $8e, #1, $6352  (offset=33)         cycles=2-3
0x6331:  72 0b 52 40 ee btjf $5240, #5, $6324  (offset=-18)      cycles=2-3
0x6336:  c6 52 41       ld A, $5241                              cycles=1
0x6339:  20 3e          jra $6379  (offset=62)                   cycles=2
0x633b:  72 0b 52 30 e4 btjf $5230, #5, $6324  (offset=-28)      cycles=2-3
0x6340:  c6 52 30       ld A, $5230                              cycles=1
0x6343:  a4 09          and A, #$09                              cycles=1
0x6345:  27 06          jreq $634d  (offset=6)                   cycles=1-2
0x6347:  c6 52 31       ld A, $5231                              cycles=1
0x634a:  cc 63 ce       jp $63ce                                 cycles=1
0x634d:  c6 52 31       ld A, $5231                              cycles=1
0x6350:  20 27          jra $6379  (offset=39)                   cycles=2
0x6352:  c6 54 24       ld A, $5424                              cycles=1
0x6355:  a4 03          and A, #$03                              cycles=1
0x6357:  27 cb          jreq $6324  (offset=-53)                 cycles=1-2
0x6359:  72 09 54 24 06 btjf $5424, #4, $6364  (offset=6)        cycles=2-3
0x635e:  72 19 54 24    bres $5424, #4                           cycles=1
0x6362:  20 6a          jra $63ce  (offset=106)                  cycles=2
0x6364:  a6 06          ld A, #$06                               cycles=1
0x6366:  c7 54 27       ld $5427,A                               cycles=1
0x6369:  c6 54 28       ld A, $5428                              cycles=1
0x636c:  a4 70          and A, #$70                              cycles=1
0x636e:  26 07          jrne $6377  (offset=7)                   cycles=1-2
0x6370:  a6 07          ld A, #$07                               cycles=1
0x6372:  c7 54 27       ld $5427,A                               cycles=1
0x6375:  20 02          jra $6379  (offset=2)                    cycles=2
0x6377:  20 55          jra $63ce  (offset=85)                   cycles=2
0x6379:  fc             jp (X)                                   cycles=1
0x637a:  72 00 00 8e 05 btjt $8e, #0, $6384  (offset=5)          cycles=2-3
0x637f:  72 02 00 8e 07 btjt $8e, #1, $638b  (offset=7)          cycles=2-3
0x6384:  b7 82          ld $82,A                                 cycles=1
0x6386:  ae 63 95       ldw X, #$6395                            cycles=2
0x6389:  20 99          jra $6324  (offset=-103)                 cycles=2
0x638b:  ce 54 2a       ldw X, $542a                             cycles=2
0x638e:  54             srlw X                                   cycles=2
0x638f:  54             srlw X                                   cycles=2
0x6390:  9f             ld A, XL                                 cycles=1
0x6391:  b7 82          ld $82,A                                 cycles=1
0x6393:  20 08          jra $639d  (offset=8)                    cycles=2
0x6395:  b7 83          ld $83,A                                 cycles=1
0x6397:  b8 82          xor A, $82                               cycles=1
0x6399:  a1 ff          cp A, #$ff                               cycles=1
0x639b:  26 31          jrne $63ce  (offset=49)                  cycles=1-2
0x639d:  b6 82          ld A, $82                                cycles=1
0x639f:  ae 64 1c       ldw X, #$641c                            cycles=2
0x63a2:  a1 00          cp A, #$00                               cycles=1
0x63a4:  27 d3          jreq $6379  (offset=-45)                 cycles=1-2
0x63a6:  ae 64 60       ldw X, #$6460                            cycles=2
0x63a9:  a1 11          cp A, #$11                               cycles=1
0x63ab:  27 cc          jreq $6379  (offset=-52)                 cycles=1-2
0x63ad:  ae 65 84       ldw X, #$6584                            cycles=2
0x63b0:  a1 21          cp A, #$21                               cycles=1
0x63b2:  27 c5          jreq $6379  (offset=-59)                 cycles=1-2
0x63b4:  ae 65 ac       ldw X, #$65ac                            cycles=2
0x63b7:  a1 31          cp A, #$31                               cycles=1
0x63b9:  27 be          jreq $6379  (offset=-66)                 cycles=1-2
0x63bb:  ae 64 a9       ldw X, #$64a9                            cycles=2
0x63be:  a1 43          cp A, #$43                               cycles=1
0x63c0:  27 b7          jreq $6379  (offset=-73)                 cycles=1-2
0x63c2:  72 03 00 8e 07 btjf $8e, #1, $63ce  (offset=7)          cycles=2-3
0x63c7:  ae 63 de       ldw X, #$63de                            cycles=2
0x63ca:  a1 03          cp A, #$03                               cycles=1
0x63cc:  27 ab          jreq $6379  (offset=-85)                 cycles=1-2
0x63ce:  72 03 00 8e 03 btjf $8e, #1, $63d6  (offset=3)          cycles=2-3
0x63d3:  cd 61 01       call $6101                               cycles=4
0x63d6:  a6 1f          ld A, #$1f                               cycles=1
0x63d8:  cd 61 16       call $6116                               cycles=4
0x63db:  cc 63 21       jp $6321                                 cycles=1
0x63de:  c6 54 2e       ld A, $542e                              cycles=1
0x63e1:  72 1a 54 24    bset $5424, #5                           cycles=1
0x63e5:  a1 04          cp A, #$04                               cycles=1
0x63e7:  26 05          jrne $63ee  (offset=5)                   cycles=1-2
0x63e9:  ae 41 23       ldw X, #$4123                            cycles=2
0x63ec:  20 19          jra $6407  (offset=25)                   cycles=2
0x63ee:  a1 03          cp A, #$03                               cycles=1
0x63f0:  26 05          jrne $63f7  (offset=5)                   cycles=1-2
0x63f2:  ae 43 23       ldw X, #$4323                            cycles=2
0x63f5:  20 10          jra $6407  (offset=16)                   cycles=2
0x63f7:  a1 02          cp A, #$02                               cycles=1
0x63f9:  26 05          jrne $6400  (offset=5)                   cycles=1-2
0x63fb:  ae 47 23       ldw X, #$4723                            cycles=2
0x63fe:  20 07          jra $6407  (offset=7)                    cycles=2
0x6400:  a1 01          cp A, #$01                               cycles=1
0x6402:  26 ca          jrne $63ce  (offset=-54)                 cycles=1-2
0x6404:  ae 8f 23       ldw X, #$8f23                            cycles=2
0x6407:  bf 95          ldw $95,X                                cycles=2
0x6409:  a6 79          ld A, #$79                               cycles=1
0x640b:  cd 61 16       call $6116                               cycles=4
0x640e:  cd 60 f7       call $60f7                               cycles=4
0x6411:  cd 60 9d       call $609d                               cycles=4
0x6414:  a6 79          ld A, #$79                               cycles=1
0x6416:  cd 61 16       call $6116                               cycles=4
0x6419:  cc 63 21       jp $6321                                 cycles=1
0x641c:  72 1a 54 24    bset $5424, #5                           cycles=1
0x6420:  a6 79          ld A, #$79                               cycles=1
0x6422:  cd 61 16       call $6116                               cycles=4
0x6425:  a6 05          ld A, #$05                               cycles=1
0x6427:  72 03 00 8e 01 btjf $8e, #1, $642d  (offset=1)          cycles=2-3
0x642c:  4c             inc A                                    cycles=1
0x642d:  cd 61 16       call $6116                               cycles=4
0x6430:  a6 21          ld A, #$21                               cycles=1
0x6432:  cd 61 16       call $6116                               cycles=4
0x6435:  a6 00          ld A, #$00                               cycles=1
0x6437:  cd 61 16       call $6116                               cycles=4
0x643a:  72 03 00 8e 05 btjf $8e, #1, $6444  (offset=5)          cycles=2-3
0x643f:  a6 03          ld A, #$03                               cycles=1
0x6441:  cd 61 16       call $6116                               cycles=4
0x6444:  a6 11          ld A, #$11                               cycles=1
0x6446:  cd 61 16       call $6116                               cycles=4
0x6449:  a6 21          ld A, #$21                               cycles=1
0x644b:  cd 61 16       call $6116                               cycles=4
0x644e:  a6 31          ld A, #$31                               cycles=1
0x6450:  cd 61 16       call $6116                               cycles=4
0x6453:  a6 43          ld A, #$43                               cycles=1
0x6455:  cd 61 16       call $6116                               cycles=4
0x6458:  a6 79          ld A, #$79                               cycles=1
0x645a:  cd 61 16       call $6116                               cycles=4
0x645d:  cc 63 21       jp $6321                                 cycles=1
0x6460:  72 00 00 8e 05 btjt $8e, #0, $646a  (offset=5)          cycles=2-3
0x6465:  72 02 00 8e 0b btjt $8e, #1, $6475  (offset=11)         cycles=2-3
0x646a:  a6 79          ld A, #$79                               cycles=1
0x646c:  cd 61 16       call $6116                               cycles=4
0x646f:  ae 66 a1       ldw X, #$66a1                            cycles=2
0x6472:  cc 63 24       jp $6324                                 cycles=1
0x6475:  cd 66 de       call $66de                               cycles=4
0x6478:  cc 66 fa       jp $66fa                                 cycles=1
0x647b:  b7 88          ld $88,A                                 cycles=1
0x647d:  ae 64 83       ldw X, #$6483                            cycles=2
0x6480:  cc 63 24       jp $6324                                 cycles=1
0x6483:  b7 89          ld $89,A                                 cycles=1
0x6485:  b8 88          xor A, $88                               cycles=1
0x6487:  a1 ff          cp A, #$ff                               cycles=1
0x6489:  26 18          jrne $64a3  (offset=24)                  cycles=1-2
0x648b:  a6 79          ld A, #$79                               cycles=1
0x648d:  cd 61 16       call $6116                               cycles=4
0x6490:  5f             clrw X                                   cycles=1
0x6491:  cd 60 8c       call $608c                               cycles=4
0x6494:  92 af 00 8a    ldf A, ([$8a.e],X)                       cycles=4
0x6498:  cd 61 16       call $6116                               cycles=4
0x649b:  9f             ld A, XL                                 cycles=1
0x649c:  b1 88          cp A, $88                                cycles=1
0x649e:  27 06          jreq $64a6  (offset=6)                   cycles=1-2
0x64a0:  5c             incw X                                   cycles=1
0x64a1:  20 ee          jra $6491  (offset=-18)                  cycles=2
0x64a3:  cc 63 ce       jp $63ce                                 cycles=1
0x64a6:  cc 63 21       jp $6321                                 cycles=1
0x64a9:  72 00 00 8e 05 btjt $8e, #0, $64b3  (offset=5)          cycles=2-3
0x64ae:  72 02 00 8e 0b btjt $8e, #1, $64be  (offset=11)         cycles=2-3
0x64b3:  a6 79          ld A, #$79                               cycles=1
0x64b5:  cd 61 16       call $6116                               cycles=4
0x64b8:  ae 64 d2       ldw X, #$64d2                            cycles=2
0x64bb:  cc 63 24       jp $6324                                 cycles=1
0x64be:  c6 54 29       ld A, $5429                              cycles=1
0x64c1:  4a             dec A                                    cycles=1
0x64c2:  b7 88          ld $88,A                                 cycles=1
0x64c4:  c6 54 2e       ld A, $542e                              cycles=1
0x64c7:  a1 ff          cp A, #$ff                               cycles=1
0x64c9:  26 6e          jrne $6539  (offset=110)                 cycles=1-2
0x64cb:  72 18 00 8e    bset $8e, #4                             cycles=1
0x64cf:  cc 65 6c       jp $656c                                 cycles=1
0x64d2:  b7 88          ld $88,A                                 cycles=1
0x64d4:  a1 ff          cp A, #$ff                               cycles=1
0x64d6:  26 11          jrne $64e9  (offset=17)                  cycles=1-2
0x64d8:  ae 64 de       ldw X, #$64de                            cycles=2
0x64db:  cc 63 24       jp $6324                                 cycles=1
0x64de:  a1 00          cp A, #$00                               cycles=1
0x64e0:  26 35          jrne $6517  (offset=53)                  cycles=1-2
0x64e2:  72 18 00 8e    bset $8e, #4                             cycles=1
0x64e6:  cc 65 75       jp $6575                                 cycles=1
0x64e9:  90 5f          clrw Y                                   cycles=1
0x64eb:  a1 82          cp A, #$82                               cycles=1
0x64ed:  24 02          jrnc $64f1  (offset=2)                   cycles=1-2
0x64ef:  20 1c          jra $650d  (offset=28)                   cycles=2
0x64f1:  ae 64 f7       ldw X, #$64f7                            cycles=2
0x64f4:  cc 63 24       jp $6324                                 cycles=1
0x64f7:  90 9f          ld A, YL                                 cycles=1
0x64f9:  b1 88          cp A, $88                                cycles=1
0x64fb:  27 08          jreq $6505  (offset=8)                   cycles=1-2
0x64fd:  90 5c          incw Y                                   cycles=1
0x64ff:  ae 64 f7       ldw X, #$64f7                            cycles=2
0x6502:  cc 63 24       jp $6324                                 cycles=1
0x6505:  ae 65 0b       ldw X, #$650b                            cycles=2
0x6508:  cc 63 24       jp $6324                                 cycles=1
0x650b:  20 0a          jra $6517  (offset=10)                   cycles=2
0x650d:  b6 88          ld A, $88                                cycles=1
0x650f:  b7 8f          ld $8f,A                                 cycles=1
0x6511:  ae 65 1a       ldw X, #$651a                            cycles=2
0x6514:  cc 63 24       jp $6324                                 cycles=1
0x6517:  cc 63 ce       jp $63ce                                 cycles=1
0x651a:  a1 82          cp A, #$82                               cycles=1
0x651c:  24 02          jrnc $6520  (offset=2)                   cycles=1-2
0x651e:  20 04          jra $6524  (offset=4)                    cycles=2
0x6520:  72 1e 00 8e    bset $8e, #7                             cycles=1
0x6524:  90 e7 00       ld ($00,Y),A                             cycles=1
0x6527:  b8 8f          xor A, $8f                               cycles=1
0x6529:  b7 8f          ld $8f,A                                 cycles=1
0x652b:  90 9f          ld A, YL                                 cycles=1
0x652d:  b1 88          cp A, $88                                cycles=1
0x652f:  27 1e          jreq $654f  (offset=30)                  cycles=1-2
0x6531:  90 5c          incw Y                                   cycles=1
0x6533:  ae 65 1a       ldw X, #$651a                            cycles=2
0x6536:  cc 63 24       jp $6324                                 cycles=1
0x6539:  72 19 00 8e    bres $8e, #4                             cycles=1
0x653d:  5f             clrw X                                   cycles=1
0x653e:  d6 54 2e       ld A, ($542e,X)                          cycles=1
0x6541:  a1 82          cp A, #$82                               cycles=1
0x6543:  24 d2          jrnc $6517  (offset=-46)                 cycles=1-2
0x6545:  e7 00          ld ($00,X),A                             cycles=1
0x6547:  9f             ld A, XL                                 cycles=1
0x6548:  b1 88          cp A, $88                                cycles=1
0x654a:  27 20          jreq $656c  (offset=32)                  cycles=1-2
0x654c:  5c             incw X                                   cycles=1
0x654d:  20 ef          jra $653e  (offset=-17)                  cycles=2
0x654f:  ae 65 55       ldw X, #$6555                            cycles=2
0x6552:  cc 63 24       jp $6324                                 cycles=1
0x6555:  72 0f 00 8e 06 btjf $8e, #7, $6560  (offset=6)          cycles=2-3
0x655a:  72 1f 00 8e    bres $8e, #7                             cycles=1
0x655e:  20 b7          jra $6517  (offset=-73)                  cycles=2
0x6560:  72 19 00 8e    bres $8e, #4                             cycles=1
0x6564:  b7 89          ld $89,A                                 cycles=1
0x6566:  b8 8f          xor A, $8f                               cycles=1
0x6568:  27 0b          jreq $6575  (offset=11)                  cycles=1-2
0x656a:  20 ab          jra $6517  (offset=-85)                  cycles=2
0x656c:  72 1a 54 24    bset $5424, #5                           cycles=1
0x6570:  a6 79          ld A, #$79                               cycles=1
0x6572:  cd 61 16       call $6116                               cycles=4
0x6575:  cd 00 a0       call $a0                                 cycles=4
0x6578:  b6 9c          ld A, $9c                                cycles=1
0x657a:  26 9b          jrne $6517  (offset=-101)                cycles=1-2
0x657c:  a6 79          ld A, #$79                               cycles=1
0x657e:  cd 61 16       call $6116                               cycles=4
0x6581:  cc 63 21       jp $6321                                 cycles=1
0x6584:  72 00 00 8e 05 btjt $8e, #0, $658e  (offset=5)          cycles=2-3
0x6589:  72 02 00 8e 0b btjt $8e, #1, $6599  (offset=11)         cycles=2-3
0x658e:  a6 79          ld A, #$79                               cycles=1
0x6590:  cd 61 16       call $6116                               cycles=4
0x6593:  ae 66 a1       ldw X, #$66a1                            cycles=2
0x6596:  cc 63 24       jp $6324                                 cycles=1
0x6599:  cd 66 de       call $66de                               cycles=4
0x659c:  cc 66 fa       jp $66fa                                 cycles=1
0x659f:  5f             clrw X                                   cycles=1
0x65a0:  4f             clr A                                    cycles=1
0x65a1:  e7 a0          ld ($a0,X),A                             cycles=1
0x65a3:  5c             incw X                                   cycles=1
0x65a4:  a3 01 60       cpw X, #$160                             cycles=2
0x65a7:  26 f8          jrne $65a1  (offset=-8)                  cycles=1-2
0x65a9:  cc 67 b1       jp $67b1                                 cycles=1
0x65ac:  72 00 00 8e 05 btjt $8e, #0, $65b6  (offset=5)          cycles=2-3
0x65b1:  72 02 00 8e 0b btjt $8e, #1, $65c1  (offset=11)         cycles=2-3
0x65b6:  a6 79          ld A, #$79                               cycles=1
0x65b8:  cd 61 16       call $6116                               cycles=4
0x65bb:  ae 66 a1       ldw X, #$66a1                            cycles=2
0x65be:  cc 63 24       jp $6324                                 cycles=1
0x65c1:  cd 66 de       call $66de                               cycles=4
0x65c4:  b6 88          ld A, $88                                cycles=1
0x65c6:  2b 2d          jrmi $65f5  (offset=45)                  cycles=1-2
0x65c8:  cc 66 fa       jp $66fa                                 cycles=1
0x65cb:  90 5f          clrw Y                                   cycles=1
0x65cd:  b7 88          ld $88,A                                 cycles=1
0x65cf:  2b 02          jrmi $65d3  (offset=2)                   cycles=1-2
0x65d1:  20 1c          jra $65ef  (offset=28)                   cycles=2
0x65d3:  ae 65 d9       ldw X, #$65d9                            cycles=2
0x65d6:  cc 63 24       jp $6324                                 cycles=1
0x65d9:  90 9f          ld A, YL                                 cycles=1
0x65db:  b1 88          cp A, $88                                cycles=1
0x65dd:  27 08          jreq $65e7  (offset=8)                   cycles=1-2
0x65df:  90 5c          incw Y                                   cycles=1
0x65e1:  ae 65 d9       ldw X, #$65d9                            cycles=2
0x65e4:  cc 63 24       jp $6324                                 cycles=1
0x65e7:  ae 65 ed       ldw X, #$65ed                            cycles=2
0x65ea:  cc 63 24       jp $6324                                 cycles=1
0x65ed:  20 06          jra $65f5  (offset=6)                    cycles=2
0x65ef:  ae 65 f8       ldw X, #$65f8                            cycles=2
0x65f2:  cc 63 24       jp $6324                                 cycles=1
0x65f5:  cc 63 ce       jp $63ce                                 cycles=1
0x65f8:  72 00 00 8e 05 btjt $8e, #0, $6602  (offset=5)          cycles=2-3
0x65fd:  72 02 00 8e 0e btjt $8e, #1, $6610  (offset=14)         cycles=2-3
0x6602:  90 e7 00       ld ($00,Y),A                             cycles=1
0x6605:  90 9f          ld A, YL                                 cycles=1
0x6607:  b1 88          cp A, $88                                cycles=1
0x6609:  27 34          jreq $663f  (offset=52)                  cycles=1-2
0x660b:  90 5c          incw Y                                   cycles=1
0x660d:  cc 63 24       jp $6324                                 cycles=1
0x6610:  c6 54 29       ld A, $5429                              cycles=1
0x6613:  26 07          jrne $661c  (offset=7)                   cycles=1-2
0x6615:  72 1a 54 24    bset $5424, #5                           cycles=1
0x6619:  cc 63 24       jp $6324                                 cycles=1
0x661c:  b7 91          ld $91,A                                 cycles=1
0x661e:  5f             clrw X                                   cycles=1
0x661f:  d6 54 2e       ld A, ($542e,X)                          cycles=1
0x6622:  90 e7 00       ld ($00,Y),A                             cycles=1
0x6625:  5c             incw X                                   cycles=1
0x6626:  90 5c          incw Y                                   cycles=1
0x6628:  9f             ld A, XL                                 cycles=1
0x6629:  b1 91          cp A, $91                                cycles=1
0x662b:  26 f2          jrne $661f  (offset=-14)                 cycles=1-2
0x662d:  72 1a 54 24    bset $5424, #5                           cycles=1
0x6631:  90 9f          ld A, YL                                 cycles=1
0x6633:  b1 92          cp A, $92                                cycles=1
0x6635:  27 08          jreq $663f  (offset=8)                   cycles=1-2
0x6637:  22 bc          jrugt $65f5  (offset=-68)                cycles=1-2
0x6639:  ae 65 f8       ldw X, #$65f8                            cycles=2
0x663c:  cc 63 24       jp $6324                                 cycles=1
0x663f:  ae 66 45       ldw X, #$6645                            cycles=2
0x6642:  cc 63 24       jp $6324                                 cycles=1
0x6645:  72 00 00 8e 05 btjt $8e, #0, $664f  (offset=5)          cycles=2-3
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
0x6683:  b6 9d          ld A, $9d                                cycles=1
0x6685:  27 06          jreq $668d  (offset=6)                   cycles=1-2
0x6687:  cc 63 ce       jp $63ce                                 cycles=1
0x668a:  cd 67 b2       call $67b2                               cycles=4
0x668d:  cd 67 c5       call $67c5                               cycles=4
0x6690:  72 0f 00 8e f2 btjf $8e, #7, $6687  (offset=-14)        cycles=2-3
0x6695:  a6 79          ld A, #$79                               cycles=1
0x6697:  cd 61 16       call $6116                               cycles=4
0x669a:  72 1f 00 8e    bres $8e, #7                             cycles=1
0x669e:  cc 63 21       jp $6321                                 cycles=1
0x66a1:  b7 84          ld $84,A                                 cycles=1
0x66a3:  b7 8f          ld $8f,A                                 cycles=1
0x66a5:  ae 66 ab       ldw X, #$66ab                            cycles=2
0x66a8:  cc 63 24       jp $6324                                 cycles=1
0x66ab:  b7 85          ld $85,A                                 cycles=1
0x66ad:  b7 8a          ld $8a,A                                 cycles=1
0x66af:  b8 8f          xor A, $8f                               cycles=1
0x66b1:  b7 8f          ld $8f,A                                 cycles=1
0x66b3:  ae 66 b9       ldw X, #$66b9                            cycles=2
0x66b6:  cc 63 24       jp $6324                                 cycles=1
0x66b9:  b7 86          ld $86,A                                 cycles=1
0x66bb:  b7 8b          ld $8b,A                                 cycles=1
0x66bd:  b8 8f          xor A, $8f                               cycles=1
0x66bf:  b7 8f          ld $8f,A                                 cycles=1
0x66c1:  ae 66 c7       ldw X, #$66c7                            cycles=2
0x66c4:  cc 63 24       jp $6324                                 cycles=1
0x66c7:  b7 87          ld $87,A                                 cycles=1
0x66c9:  b7 8c          ld $8c,A                                 cycles=1
0x66cb:  b8 8f          xor A, $8f                               cycles=1
0x66cd:  b7 8f          ld $8f,A                                 cycles=1
0x66cf:  ae 66 d5       ldw X, #$66d5                            cycles=2
0x66d2:  cc 63 24       jp $6324                                 cycles=1
0x66d5:  b7 89          ld $89,A                                 cycles=1
0x66d7:  b8 8f          xor A, $8f                               cycles=1
0x66d9:  27 1f          jreq $66fa  (offset=31)                  cycles=1-2
0x66db:  cc 63 ce       jp $63ce                                 cycles=1
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
0x6763:  cc 63 ce       jp $63ce                                 cycles=1
0x6766:  a3 18 00       cpw X, #$1800                            cycles=2
0x6769:  24 f8          jrnc $6763  (offset=-8)                  cycles=1-2
0x676b:  72 1b 00 8e    bres $8e, #5                             cycles=1
0x676f:  a6 79          ld A, #$79                               cycles=1
0x6771:  cd 61 16       call $6116                               cycles=4
0x6774:  b6 82          ld A, $82                                cycles=1
0x6776:  a1 31          cp A, #$31                               cycles=1
0x6778:  27 07          jreq $6781  (offset=7)                   cycles=1-2
0x677a:  a1 11          cp A, #$11                               cycles=1
0x677c:  27 1d          jreq $679b  (offset=29)                  cycles=1-2
0x677e:  cc 65 9f       jp $659f                                 cycles=1
0x6781:  72 00 00 8e 05 btjt $8e, #0, $678b  (offset=5)          cycles=2-3
0x6786:  72 02 00 8e 08 btjt $8e, #1, $6793  (offset=8)          cycles=2-3
0x678b:  ae 65 cb       ldw X, #$65cb                            cycles=2
0x678e:  3f 8f          clr $8f                                  cycles=1
0x6790:  cc 63 24       jp $6324                                 cycles=1
0x6793:  90 5f          clrw Y                                   cycles=1
0x6795:  ae 65 f8       ldw X, #$65f8                            cycles=2
0x6798:  cc 63 24       jp $6324                                 cycles=1
0x679b:  72 00 00 8e 05 btjt $8e, #0, $67a5  (offset=5)          cycles=2-3
0x67a0:  72 02 00 8e 08 btjt $8e, #1, $67ad  (offset=8)          cycles=2-3
0x67a5:  ae 64 7b       ldw X, #$647b                            cycles=2
0x67a8:  3f 8f          clr $8f                                  cycles=1
0x67aa:  cc 63 24       jp $6324                                 cycles=1
0x67ad:  5f             clrw X                                   cycles=1
0x67ae:  cc 64 91       jp $6491                                 cycles=1
0x67b1:  81             ret                                      cycles=4
0x67b2:  5f             clrw X                                   cycles=1
0x67b3:  cd 60 8c       call $608c                               cycles=4
0x67b6:  e6 00          ld A, ($00,X)                            cycles=1
0x67b8:  92 a7 00 8a    ldf ([$8a.e],X),A                        cycles=4
0x67bc:  9f             ld A, XL                                 cycles=1
0x67bd:  b1 88          cp A, $88                                cycles=1
0x67bf:  27 03          jreq $67c4  (offset=3)                   cycles=1-2
0x67c1:  5c             incw X                                   cycles=1
0x67c2:  20 ef          jra $67b3  (offset=-17)                  cycles=2
0x67c4:  81             ret                                      cycles=4
0x67c5:  5f             clrw X                                   cycles=1
0x67c6:  b6 88          ld A, $88                                cycles=1
0x67c8:  b7 8f          ld $8f,A                                 cycles=1
0x67ca:  cd 60 8c       call $608c                               cycles=4
0x67cd:  92 af 00 8a    ldf A, ([$8a.e],X)                       cycles=4
0x67d1:  b8 8f          xor A, $8f                               cycles=1
0x67d3:  b7 8f          ld $8f,A                                 cycles=1
0x67d5:  9f             ld A, XL                                 cycles=1
0x67d6:  b1 88          cp A, $88                                cycles=1
0x67d8:  27 03          jreq $67dd  (offset=3)                   cycles=1-2
0x67da:  5c             incw X                                   cycles=1
0x67db:  20 ed          jra $67ca  (offset=-19)                  cycles=2
0x67dd:  b6 89          ld A, $89                                cycles=1
0x67df:  b1 8f          cp A, $8f                                cycles=1
0x67e1:  26 06          jrne $67e9  (offset=6)                   cycles=1-2
0x67e3:  72 1e 00 8e    bset $8e, #7                             cycles=1
0x67e7:  20 04          jra $67ed  (offset=4)                    cycles=2
0x67e9:  72 1f 00 8e    bres $8e, #7                             cycles=1
0x67ed:  81             ret                                      cycles=4
0x67ee:  71             ???                                      cycles=?
0x67ef:  23 37          jrule $6828  (offset=55)                 cycles=1-2
0x67f1:  39 41          rlc $41                                  cycles=1
0x67f3:  42             mul X, A                                 cycles=4
0x67f4:  42             mul X, A                                 cycles=4
0x67f5:  38 30          sll $30                                  cycles=1
0x67f7:  31 32 38       exg A, $3238                             cycles=3
0x67fa:  00 09          neg ($09,SP)                             cycles=1
0x67fc:  93             ldw X, Y                                 cycles=1
0x67fd:  d0 a3 04       sub A, ($a304,X)                         cycles=1
