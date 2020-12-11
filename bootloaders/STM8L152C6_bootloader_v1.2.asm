
naken_util - by Michael Kohn
                Joe Davisson
    Web: http://www.mikekohn.net/
  Email: mike@mikekohn.net

Version: January 20, 2020

Loaded hexfile STM8L152C6_bootloader_vx_x.hex from 0x6000 to 0x67ff
Type help for a list of commands.

Addr    Opcode Instruction                              Cycles
------- ------ ----------------------------------       ------
0x6000:  9b             sim                                      cycles=1
0x6001:  ad 0d          callr $6010  (offset=13)                 cycles=4
0x6003:  25 1a          jrc $601f  (offset=26)                   cycles=1-2
0x6005:  c6 48 0b       ld A, $480b                              cycles=1
0x6008:  a1 55          cp A, #$55                               cycles=1
0x600a:  27 13          jreq $601f  (offset=19)                  cycles=1-2
0x600c:  ac 00 80 00    jpf $8000                                cycles=2
0x6010:  c6 80 00       ld A, $8000                              cycles=1
0x6013:  a1 82          cp A, #$82                               cycles=1
0x6015:  27 06          jreq $601d  (offset=6)                   cycles=1-2
0x6017:  a1 ac          cp A, #$ac                               cycles=1
0x6019:  27 02          jreq $601d  (offset=2)                   cycles=1-2
0x601b:  99             scf                                      cycles=1
0x601c:  81             ret                                      cycles=4
0x601d:  98             rcf                                      cycles=1
0x601e:  81             ret                                      cycles=4
0x601f:  c6 48 00       ld A, $4800                              cycles=1
0x6022:  a1 aa          cp A, #$aa                               cycles=1
0x6024:  27 07          jreq $602d  (offset=7)                   cycles=1-2
0x6026:  cd 64 54       call $6454                               cycles=4
0x6029:  ac 00 80 00    jpf $8000                                cycles=2
0x602d:  4f             clr A                                    cycles=1
0x602e:  c7 50 c0       ld $50c0,A                               cycles=1
0x6031:  72 14 50 0d    bset $500d, #2                           cycles=1
0x6035:  35 56 50 52    mov $5052, #$56                          cycles=1
0x6039:  35 ae 50 52    mov $5052, #$ae                          cycles=1
0x603d:  35 ae 50 53    mov $5053, #$ae                          cycles=1
0x6041:  35 56 50 53    mov $5053, #$56                          cycles=1
0x6045:  3f 91          clr $91                                  cycles=1
0x6047:  ad 71          callr $60ba  (offset=113)                cycles=4
0x6049:  72 06 00 91 07 btjt $91, #3, $6055  (offset=7)          cycles=2-3
0x604e:  cd 64 54       call $6454                               cycles=4
0x6051:  ac 00 80 00    jpf $8000                                cycles=2
0x6055:  a6 45          ld A, #$45                               cycles=1
0x6057:  cd 64 a8       call $64a8                               cycles=4
0x605a:  a6 79          ld A, #$79                               cycles=1
0x605c:  ad 45          callr $60a3  (offset=69)                 cycles=4
0x605e:  3f 97          clr $97                                  cycles=1
0x6060:  9d             nop                                      cycles=1
0x6061:  cd 61 40       call $6140                               cycles=4
0x6064:  cd 64 54       call $6454                               cycles=4
0x6067:  92 ac 00 8d    jpf [$8d.e]                              cycles=6
0x606b:  35 55 50 e0    mov $50e0, #$55                          cycles=1
0x606f:  35 05 50 e1    mov $50e1, #$05                          cycles=1
0x6073:  35 aa 50 e0    mov $50e0, #$aa                          cycles=1
0x6077:  35 7f 50 d3    mov $50d3, #$7f                          cycles=1
0x607b:  81             ret                                      cycles=4
0x607c:  72 1a 50 c3    bset $50c3, #5                           cycles=1
0x6080:  72 16 50 0d    bset $500d, #3                           cycles=1
0x6084:  72 15 50 0d    bres $500d, #2                           cycles=1
0x6088:  72 16 52 35    bset $5235, #3                           cycles=1
0x608c:  72 14 52 35    bset $5235, #2                           cycles=1
0x6090:  72 18 52 34    bset $5234, #4                           cycles=1
0x6094:  72 14 52 34    bset $5234, #2                           cycles=1
0x6098:  b6 95          ld A, $95                                cycles=1
0x609a:  c7 52 33       ld $5233,A                               cycles=1
0x609d:  b6 94          ld A, $94                                cycles=1
0x609f:  c7 52 32       ld $5232,A                               cycles=1
0x60a2:  81             ret                                      cycles=4
0x60a3:  b7 90          ld $90,A                                 cycles=1
0x60a5:  72 01 00 91 0f btjf $91, #0, $60b9  (offset=15)         cycles=2-3
0x60aa:  c6 52 30       ld A, $5230                              cycles=1
0x60ad:  b6 90          ld A, $90                                cycles=1
0x60af:  c7 52 31       ld $5231,A                               cycles=1
0x60b2:  72 0d 52 30 fb btjf $5230, #6, $60b2  (offset=-5)       cycles=2-3
0x60b7:  20 00          jra $60b9  (offset=0)                    cycles=2
0x60b9:  81             ret                                      cycles=4
0x60ba:  72 12 50 c3    bset $50c3, #1                           cycles=1
0x60be:  a6 07          ld A, #$07                               cycles=1
0x60c0:  c7 52 8e       ld $528e,A                               cycles=1
0x60c3:  72 10 52 80    bset $5280, #0                           cycles=1
0x60c7:  72 01 52 86 fb btjf $5286, #0, $60c7  (offset=-5)       cycles=2-3
0x60cc:  4f             clr A                                    cycles=1
0x60cd:  3f 93          clr $93                                  cycles=1
0x60cf:  c7 52 86       ld $5286,A                               cycles=1
0x60d2:  72 10 52 80    bset $5280, #0                           cycles=1
0x60d6:  20 2a          jra $6102  (offset=42)                   cycles=2
0x60d8:  72 04 50 0b 25 btjt $500b, #2, $6102  (offset=37)       cycles=2-3
0x60dd:  ae 04 60       ldw X, #$460                             cycles=2
0x60e0:  72 10 50 c3    bset $50c3, #0                           cycles=1
0x60e4:  5a             decw X                                   cycles=1
0x60e5:  27 1b          jreq $6102  (offset=27)                  cycles=1-2
0x60e7:  72 05 50 0b f8 btjf $500b, #2, $60e4  (offset=-8)       cycles=2-3
0x60ec:  72 10 52 50    bset $5250, #0                           cycles=1
0x60f0:  72 04 50 0b fb btjt $500b, #2, $60f0  (offset=-5)       cycles=2-3
0x60f5:  ce 52 5c       ldw X, $525c                             cycles=2
0x60f8:  72 10 00 91    bset $91, #0                             cycles=1
0x60fc:  20 25          jra $6123  (offset=37)                   cycles=2
0x60fe:  20 00          jra $6100  (offset=0)                    cycles=2
0x6100:  20 d4          jra $60d6  (offset=-44)                  cycles=2
0x6102:  cd 60 6b       call $606b                               cycles=4
0x6105:  72 01 52 86 ce btjf $5286, #0, $60d8  (offset=-50)      cycles=2-3
0x610a:  72 5f 52 86    clr $5286                                cycles=1
0x610e:  3c 93          inc $93                                  cycles=1
0x6110:  72 03 00 93 c3 btjf $93, #1, $60d8  (offset=-61)        cycles=2-3
0x6115:  72 17 00 91    bres $91, #3                             cycles=1
0x6119:  cd 60 10       call $6010                               cycles=4
0x611c:  24 21          jrnc $613f  (offset=33)                  cycles=1-2
0x611e:  35 80 50 d3    mov $50d3, #$80                          cycles=1
0x6122:  71             ???                                      cycles=?
0x6123:  1d 00 02       subw X, #$2                              cycles=2
0x6126:  a6 07          ld A, #$07                               cycles=1
0x6128:  62             div X, A                                 cycles=2-17
0x6129:  a6 10          ld A, #$10                               cycles=1
0x612b:  62             div X, A                                 cycles=2-17
0x612c:  b7 95          ld $95,A                                 cycles=1
0x612e:  9f             ld A, XL                                 cycles=1
0x612f:  b7 94          ld $94,A                                 cycles=1
0x6131:  72 16 00 91    bset $91, #3                             cycles=1
0x6135:  72 00 00 91 02 btjt $91, #0, $613c  (offset=2)          cycles=2-3
0x613a:  20 03          jra $613f  (offset=3)                    cycles=2
0x613c:  cd 60 7c       call $607c                               cycles=4
0x613f:  81             ret                                      cycles=4
0x6140:  ae 61 62       ldw X, #$6162                            cycles=2
0x6143:  cd 60 6b       call $606b                               cycles=4
0x6146:  72 00 00 91 00 btjt $91, #0, $614b  (offset=0)          cycles=2-3
0x614b:  72 0b 52 30 f3 btjf $5230, #5, $6143  (offset=-13)      cycles=2-3
0x6150:  c6 52 30       ld A, $5230                              cycles=1
0x6153:  a4 09          and A, #$09                              cycles=1
0x6155:  27 05          jreq $615c  (offset=5)                   cycles=1-2
0x6157:  c6 52 31       ld A, $5231                              cycles=1
0x615a:  20 3a          jra $6196  (offset=58)                   cycles=2
0x615c:  c6 52 31       ld A, $5231                              cycles=1
0x615f:  20 00          jra $6161  (offset=0)                    cycles=2
0x6161:  fc             jp (X)                                   cycles=1
0x6162:  b7 85          ld $85,A                                 cycles=1
0x6164:  ae 61 69       ldw X, #$6169                            cycles=2
0x6167:  20 da          jra $6143  (offset=-38)                  cycles=2
0x6169:  b7 86          ld $86,A                                 cycles=1
0x616b:  b8 85          xor A, $85                               cycles=1
0x616d:  a1 ff          cp A, #$ff                               cycles=1
0x616f:  26 25          jrne $6196  (offset=37)                  cycles=1-2
0x6171:  b6 85          ld A, $85                                cycles=1
0x6173:  ae 61 9d       ldw X, #$619d                            cycles=2
0x6176:  a1 00          cp A, #$00                               cycles=1
0x6178:  27 e7          jreq $6161  (offset=-25)                 cycles=1-2
0x617a:  ae 61 cd       ldw X, #$61cd                            cycles=2
0x617d:  a1 11          cp A, #$11                               cycles=1
0x617f:  27 e0          jreq $6161  (offset=-32)                 cycles=1-2
0x6181:  ae 62 9e       ldw X, #$629e                            cycles=2
0x6184:  a1 21          cp A, #$21                               cycles=1
0x6186:  27 d9          jreq $6161  (offset=-39)                 cycles=1-2
0x6188:  ae 62 b8       ldw X, #$62b8                            cycles=2
0x618b:  a1 31          cp A, #$31                               cycles=1
0x618d:  27 d2          jreq $6161  (offset=-46)                 cycles=1-2
0x618f:  ae 62 05       ldw X, #$6205                            cycles=2
0x6192:  a1 43          cp A, #$43                               cycles=1
0x6194:  27 cb          jreq $6161  (offset=-53)                 cycles=1-2
0x6196:  a6 1f          ld A, #$1f                               cycles=1
0x6198:  cd 60 a3       call $60a3                               cycles=4
0x619b:  20 a3          jra $6140  (offset=-93)                  cycles=2
0x619d:  a6 79          ld A, #$79                               cycles=1
0x619f:  cd 60 a3       call $60a3                               cycles=4
0x61a2:  a6 05          ld A, #$05                               cycles=1
0x61a4:  cd 60 a3       call $60a3                               cycles=4
0x61a7:  a6 12          ld A, #$12                               cycles=1
0x61a9:  cd 60 a3       call $60a3                               cycles=4
0x61ac:  a6 00          ld A, #$00                               cycles=1
0x61ae:  cd 60 a3       call $60a3                               cycles=4
0x61b1:  a6 11          ld A, #$11                               cycles=1
0x61b3:  cd 60 a3       call $60a3                               cycles=4
0x61b6:  a6 21          ld A, #$21                               cycles=1
0x61b8:  cd 60 a3       call $60a3                               cycles=4
0x61bb:  a6 31          ld A, #$31                               cycles=1
0x61bd:  cd 60 a3       call $60a3                               cycles=4
0x61c0:  a6 43          ld A, #$43                               cycles=1
0x61c2:  cd 60 a3       call $60a3                               cycles=4
0x61c5:  a6 79          ld A, #$79                               cycles=1
0x61c7:  cd 60 a3       call $60a3                               cycles=4
0x61ca:  cc 61 40       jp $6140                                 cycles=1
0x61cd:  a6 79          ld A, #$79                               cycles=1
0x61cf:  cd 60 a3       call $60a3                               cycles=4
0x61d2:  ae 63 4d       ldw X, #$634d                            cycles=2
0x61d5:  cc 61 43       jp $6143                                 cycles=1
0x61d8:  b7 8b          ld $8b,A                                 cycles=1
0x61da:  ae 61 e0       ldw X, #$61e0                            cycles=2
0x61dd:  cc 61 43       jp $6143                                 cycles=1
0x61e0:  b7 8c          ld $8c,A                                 cycles=1
0x61e2:  b8 8b          xor A, $8b                               cycles=1
0x61e4:  a1 ff          cp A, #$ff                               cycles=1
0x61e6:  26 18          jrne $6200  (offset=24)                  cycles=1-2
0x61e8:  a6 79          ld A, #$79                               cycles=1
0x61ea:  cd 60 a3       call $60a3                               cycles=4
0x61ed:  5f             clrw X                                   cycles=1
0x61ee:  cd 60 6b       call $606b                               cycles=4
0x61f1:  92 af 00 8d    ldf A, ([$8d.e],X)                       cycles=4
0x61f5:  cd 60 a3       call $60a3                               cycles=4
0x61f8:  9f             ld A, XL                                 cycles=1
0x61f9:  b1 8b          cp A, $8b                                cycles=1
0x61fb:  27 05          jreq $6202  (offset=5)                   cycles=1-2
0x61fd:  5c             incw X                                   cycles=1
0x61fe:  20 ee          jra $61ee  (offset=-18)                  cycles=2
0x6200:  20 94          jra $6196  (offset=-108)                 cycles=2
0x6202:  cc 61 40       jp $6140                                 cycles=1
0x6205:  a6 79          ld A, #$79                               cycles=1
0x6207:  cd 60 a3       call $60a3                               cycles=4
0x620a:  ae 62 10       ldw X, #$6210                            cycles=2
0x620d:  cc 61 43       jp $6143                                 cycles=1
0x6210:  b7 8b          ld $8b,A                                 cycles=1
0x6212:  a1 ff          cp A, #$ff                               cycles=1
0x6214:  26 10          jrne $6226  (offset=16)                  cycles=1-2
0x6216:  ae 62 1c       ldw X, #$621c                            cycles=2
0x6219:  cc 61 43       jp $6143                                 cycles=1
0x621c:  a1 00          cp A, #$00                               cycles=1
0x621e:  26 34          jrne $6254  (offset=52)                  cycles=1-2
0x6220:  72 18 00 91    bset $91, #4                             cycles=1
0x6224:  20 6d          jra $6293  (offset=109)                  cycles=2
0x6226:  90 5f          clrw Y                                   cycles=1
0x6228:  a1 21          cp A, #$21                               cycles=1
0x622a:  24 02          jrnc $622e  (offset=2)                   cycles=1-2
0x622c:  20 1c          jra $624a  (offset=28)                   cycles=2
0x622e:  ae 62 34       ldw X, #$6234                            cycles=2
0x6231:  cc 61 43       jp $6143                                 cycles=1
0x6234:  90 9f          ld A, YL                                 cycles=1
0x6236:  b1 8b          cp A, $8b                                cycles=1
0x6238:  27 08          jreq $6242  (offset=8)                   cycles=1-2
0x623a:  90 5c          incw Y                                   cycles=1
0x623c:  ae 62 34       ldw X, #$6234                            cycles=2
0x623f:  cc 61 43       jp $6143                                 cycles=1
0x6242:  ae 62 48       ldw X, #$6248                            cycles=2
0x6245:  cc 61 43       jp $6143                                 cycles=1
0x6248:  20 0a          jra $6254  (offset=10)                   cycles=2
0x624a:  b6 8b          ld A, $8b                                cycles=1
0x624c:  b7 92          ld $92,A                                 cycles=1
0x624e:  ae 62 57       ldw X, #$6257                            cycles=2
0x6251:  cc 61 43       jp $6143                                 cycles=1
0x6254:  cc 61 96       jp $6196                                 cycles=1
0x6257:  a1 21          cp A, #$21                               cycles=1
0x6259:  24 02          jrnc $625d  (offset=2)                   cycles=1-2
0x625b:  20 04          jra $6261  (offset=4)                    cycles=2
0x625d:  72 1e 00 91    bset $91, #7                             cycles=1
0x6261:  90 e7 03       ld ($03,Y),A                             cycles=1
0x6264:  b8 92          xor A, $92                               cycles=1
0x6266:  b7 92          ld $92,A                                 cycles=1
0x6268:  90 9f          ld A, YL                                 cycles=1
0x626a:  b1 8b          cp A, $8b                                cycles=1
0x626c:  27 08          jreq $6276  (offset=8)                   cycles=1-2
0x626e:  90 5c          incw Y                                   cycles=1
0x6270:  ae 62 57       ldw X, #$6257                            cycles=2
0x6273:  cc 61 43       jp $6143                                 cycles=1
0x6276:  ae 62 7c       ldw X, #$627c                            cycles=2
0x6279:  cc 61 43       jp $6143                                 cycles=1
0x627c:  72 0f 00 91 06 btjf $91, #7, $6287  (offset=6)          cycles=2-3
0x6281:  72 1f 00 91    bres $91, #7                             cycles=1
0x6285:  20 cd          jra $6254  (offset=-51)                  cycles=2
0x6287:  72 19 00 91    bres $91, #4                             cycles=1
0x628b:  b7 8c          ld $8c,A                                 cycles=1
0x628d:  b8 92          xor A, $92                               cycles=1
0x628f:  27 02          jreq $6293  (offset=2)                   cycles=1-2
0x6291:  20 c1          jra $6254  (offset=-63)                  cycles=2
0x6293:  cd 01 00       call $100                                cycles=4
0x6296:  a6 79          ld A, #$79                               cycles=1
0x6298:  cd 60 a3       call $60a3                               cycles=4
0x629b:  cc 61 40       jp $6140                                 cycles=1
0x629e:  a6 79          ld A, #$79                               cycles=1
0x62a0:  cd 60 a3       call $60a3                               cycles=4
0x62a3:  ae 63 4d       ldw X, #$634d                            cycles=2
0x62a6:  cc 61 43       jp $6143                                 cycles=1
0x62a9:  5f             clrw X                                   cycles=1
0x62aa:  ae 01 00       ldw X, #$100                             cycles=2
0x62ad:  4f             clr A                                    cycles=1
0x62ae:  f7             ld (X),A                                 cycles=1
0x62af:  5c             incw X                                   cycles=1
0x62b0:  a3 01 fd       cpw X, #$1fd                             cycles=2
0x62b3:  26 f9          jrne $62ae  (offset=-7)                  cycles=1-2
0x62b5:  cc 64 17       jp $6417                                 cycles=1
0x62b8:  a6 79          ld A, #$79                               cycles=1
0x62ba:  cd 60 a3       call $60a3                               cycles=4
0x62bd:  ae 63 4d       ldw X, #$634d                            cycles=2
0x62c0:  cc 61 43       jp $6143                                 cycles=1
0x62c3:  90 5f          clrw Y                                   cycles=1
0x62c5:  b7 8b          ld $8b,A                                 cycles=1
0x62c7:  2b 02          jrmi $62cb  (offset=2)                   cycles=1-2
0x62c9:  20 1c          jra $62e7  (offset=28)                   cycles=2
0x62cb:  ae 62 d1       ldw X, #$62d1                            cycles=2
0x62ce:  cc 61 43       jp $6143                                 cycles=1
0x62d1:  90 9f          ld A, YL                                 cycles=1
0x62d3:  b1 8b          cp A, $8b                                cycles=1
0x62d5:  27 08          jreq $62df  (offset=8)                   cycles=1-2
0x62d7:  90 5c          incw Y                                   cycles=1
0x62d9:  ae 62 d1       ldw X, #$62d1                            cycles=2
0x62dc:  cc 61 43       jp $6143                                 cycles=1
0x62df:  ae 62 e5       ldw X, #$62e5                            cycles=2
0x62e2:  cc 61 43       jp $6143                                 cycles=1
0x62e5:  20 06          jra $62ed  (offset=6)                    cycles=2
0x62e7:  ae 62 f0       ldw X, #$62f0                            cycles=2
0x62ea:  cc 61 43       jp $6143                                 cycles=1
0x62ed:  cc 61 96       jp $6196                                 cycles=1
0x62f0:  90 e7 03       ld ($03,Y),A                             cycles=1
0x62f3:  90 9f          ld A, YL                                 cycles=1
0x62f5:  b1 8b          cp A, $8b                                cycles=1
0x62f7:  27 07          jreq $6300  (offset=7)                   cycles=1-2
0x62f9:  90 5c          incw Y                                   cycles=1
0x62fb:  27 03          jreq $6300  (offset=3)                   cycles=1-2
0x62fd:  cc 61 43       jp $6143                                 cycles=1
0x6300:  ae 63 06       ldw X, #$6306                            cycles=2
0x6303:  cc 61 43       jp $6143                                 cycles=1
0x6306:  b7 8c          ld $8c,A                                 cycles=1
0x6308:  20 00          jra $630a  (offset=0)                    cycles=2
0x630a:  72 0b 00 91 16 btjf $91, #5, $6325  (offset=22)         cycles=2-3
0x630f:  b6 8b          ld A, $8b                                cycles=1
0x6311:  a1 7f          cp A, #$7f                               cycles=1
0x6313:  2b 10          jrmi $6325  (offset=16)                  cycles=1-2
0x6315:  b6 8a          ld A, $8a                                cycles=1
0x6317:  27 06          jreq $631f  (offset=6)                   cycles=1-2
0x6319:  a1 80          cp A, #$80                               cycles=1
0x631b:  27 02          jreq $631f  (offset=2)                   cycles=1-2
0x631d:  20 06          jra $6325  (offset=6)                    cycles=2
0x631f:  72 1c 00 91    bset $91, #6                             cycles=1
0x6323:  20 04          jra $6329  (offset=4)                    cycles=2
0x6325:  72 1d 00 91    bres $91, #6                             cycles=1
0x6329:  72 0b 00 91 05 btjf $91, #5, $6333  (offset=5)          cycles=2-3
0x632e:  cd 01 a2       call $1a2                                cycles=4
0x6331:  20 03          jra $6336  (offset=3)                    cycles=2
0x6333:  cd 64 18       call $6418                               cycles=4
0x6336:  cd 64 2b       call $642b                               cycles=4
0x6339:  72 0e 00 91 03 btjt $91, #7, $6341  (offset=3)          cycles=2-3
0x633e:  cc 61 96       jp $6196                                 cycles=1
0x6341:  a6 79          ld A, #$79                               cycles=1
0x6343:  cd 60 a3       call $60a3                               cycles=4
0x6346:  72 1f 00 91    bres $91, #7                             cycles=1
0x634a:  cc 61 40       jp $6140                                 cycles=1
0x634d:  b7 87          ld $87,A                                 cycles=1
0x634f:  b7 92          ld $92,A                                 cycles=1
0x6351:  ae 63 57       ldw X, #$6357                            cycles=2
0x6354:  cc 61 43       jp $6143                                 cycles=1
0x6357:  b7 88          ld $88,A                                 cycles=1
0x6359:  b7 8d          ld $8d,A                                 cycles=1
0x635b:  b8 92          xor A, $92                               cycles=1
0x635d:  b7 92          ld $92,A                                 cycles=1
0x635f:  ae 63 65       ldw X, #$6365                            cycles=2
0x6362:  cc 61 43       jp $6143                                 cycles=1
0x6365:  b7 89          ld $89,A                                 cycles=1
0x6367:  b7 8e          ld $8e,A                                 cycles=1
0x6369:  b8 92          xor A, $92                               cycles=1
0x636b:  b7 92          ld $92,A                                 cycles=1
0x636d:  ae 63 73       ldw X, #$6373                            cycles=2
0x6370:  cc 61 43       jp $6143                                 cycles=1
0x6373:  b7 8a          ld $8a,A                                 cycles=1
0x6375:  b7 8f          ld $8f,A                                 cycles=1
0x6377:  b8 92          xor A, $92                               cycles=1
0x6379:  b7 92          ld $92,A                                 cycles=1
0x637b:  ae 63 81       ldw X, #$6381                            cycles=2
0x637e:  cc 61 43       jp $6143                                 cycles=1
0x6381:  b7 8c          ld $8c,A                                 cycles=1
0x6383:  b8 92          xor A, $92                               cycles=1
0x6385:  27 03          jreq $638a  (offset=3)                   cycles=1-2
0x6387:  cc 61 96       jp $6196                                 cycles=1
0x638a:  4f             clr A                                    cycles=1
0x638b:  c7 50 51       ld $5051,A                               cycles=1
0x638e:  b6 87          ld A, $87                                cycles=1
0x6390:  26 57          jrne $63e9  (offset=87)                  cycles=1-2
0x6392:  be 88          ldw X, $88                               cycles=2
0x6394:  a3 01 00       cpw X, #$100                             cycles=2
0x6397:  24 50          jrnc $63e9  (offset=80)                  cycles=1-2
0x6399:  b6 88          ld A, $88                                cycles=1
0x639b:  27 06          jreq $63a3  (offset=6)                   cycles=1-2
0x639d:  72 1a 00 91    bset $91, #5                             cycles=1
0x63a1:  20 52          jra $63f5  (offset=82)                   cycles=2
0x63a3:  be 89          ldw X, $89                               cycles=2
0x63a5:  a3 80 00       cpw X, #$8000                            cycles=2
0x63a8:  25 06          jrc $63b0  (offset=6)                    cycles=1-2
0x63aa:  72 1a 00 91    bset $91, #5                             cycles=1
0x63ae:  20 45          jra $63f5  (offset=69)                   cycles=2
0x63b0:  a3 58 00       cpw X, #$5800                            cycles=2
0x63b3:  24 34          jrnc $63e9  (offset=52)                  cycles=1-2
0x63b5:  a3 50 00       cpw X, #$5000                            cycles=2
0x63b8:  25 06          jrc $63c0  (offset=6)                    cycles=1-2
0x63ba:  72 1b 00 91    bres $91, #5                             cycles=1
0x63be:  20 35          jra $63f5  (offset=53)                   cycles=2
0x63c0:  a3 49 00       cpw X, #$4900                            cycles=2
0x63c3:  24 24          jrnc $63e9  (offset=36)                  cycles=1-2
0x63c5:  a3 48 00       cpw X, #$4800                            cycles=2
0x63c8:  25 0f          jrc $63d9  (offset=15)                   cycles=1-2
0x63ca:  72 1a 00 91    bset $91, #5                             cycles=1
0x63ce:  35 01 00 97    mov $97, #$01                            cycles=1
0x63d2:  a6 80          ld A, #$80                               cycles=1
0x63d4:  c7 50 51       ld $5051,A                               cycles=1
0x63d7:  20 1c          jra $63f5  (offset=28)                   cycles=2
0x63d9:  a3 14 00       cpw X, #$1400                            cycles=2
0x63dc:  24 0b          jrnc $63e9  (offset=11)                  cycles=1-2
0x63de:  a3 10 00       cpw X, #$1000                            cycles=2
0x63e1:  25 09          jrc $63ec  (offset=9)                    cycles=1-2
0x63e3:  72 1a 00 91    bset $91, #5                             cycles=1
0x63e7:  20 0c          jra $63f5  (offset=12)                   cycles=2
0x63e9:  cc 61 96       jp $6196                                 cycles=1
0x63ec:  a3 06 00       cpw X, #$600                             cycles=2
0x63ef:  24 f8          jrnc $63e9  (offset=-8)                  cycles=1-2
0x63f1:  72 1b 00 91    bres $91, #5                             cycles=1
0x63f5:  a6 79          ld A, #$79                               cycles=1
0x63f7:  cd 60 a3       call $60a3                               cycles=4
0x63fa:  b6 85          ld A, $85                                cycles=1
0x63fc:  a1 31          cp A, #$31                               cycles=1
0x63fe:  27 07          jreq $6407  (offset=7)                   cycles=1-2
0x6400:  a1 11          cp A, #$11                               cycles=1
0x6402:  27 0b          jreq $640f  (offset=11)                  cycles=1-2
0x6404:  cc 62 a9       jp $62a9                                 cycles=1
0x6407:  ae 62 c3       ldw X, #$62c3                            cycles=2
0x640a:  3f 92          clr $92                                  cycles=1
0x640c:  cc 61 43       jp $6143                                 cycles=1
0x640f:  ae 61 d8       ldw X, #$61d8                            cycles=2
0x6412:  3f 92          clr $92                                  cycles=1
0x6414:  cc 61 43       jp $6143                                 cycles=1
0x6417:  81             ret                                      cycles=4
0x6418:  5f             clrw X                                   cycles=1
0x6419:  cd 60 6b       call $606b                               cycles=4
0x641c:  e6 03          ld A, ($03,X)                            cycles=1
0x641e:  92 a7 00 8d    ldf ([$8d.e],X),A                        cycles=4
0x6422:  9f             ld A, XL                                 cycles=1
0x6423:  b1 8b          cp A, $8b                                cycles=1
0x6425:  27 03          jreq $642a  (offset=3)                   cycles=1-2
0x6427:  5c             incw X                                   cycles=1
0x6428:  20 ef          jra $6419  (offset=-17)                  cycles=2
0x642a:  81             ret                                      cycles=4
0x642b:  5f             clrw X                                   cycles=1
0x642c:  b6 8b          ld A, $8b                                cycles=1
0x642e:  b7 92          ld $92,A                                 cycles=1
0x6430:  cd 60 6b       call $606b                               cycles=4
0x6433:  92 af 00 8d    ldf A, ([$8d.e],X)                       cycles=4
0x6437:  b8 92          xor A, $92                               cycles=1
0x6439:  b7 92          ld $92,A                                 cycles=1
0x643b:  9f             ld A, XL                                 cycles=1
0x643c:  b1 8b          cp A, $8b                                cycles=1
0x643e:  27 03          jreq $6443  (offset=3)                   cycles=1-2
0x6440:  5c             incw X                                   cycles=1
0x6441:  20 ed          jra $6430  (offset=-19)                  cycles=2
0x6443:  b6 8c          ld A, $8c                                cycles=1
0x6445:  b1 92          cp A, $92                                cycles=1
0x6447:  26 06          jrne $644f  (offset=6)                   cycles=1-2
0x6449:  72 1e 00 91    bset $91, #7                             cycles=1
0x644d:  20 04          jra $6453  (offset=4)                    cycles=2
0x644f:  72 1f 00 91    bres $91, #7                             cycles=1
0x6453:  81             ret                                      cycles=4
0x6454:  4f             clr A                                    cycles=1
0x6455:  c7 50 c0       ld $50c0,A                               cycles=1
0x6458:  c7 50 51       ld $5051,A                               cycles=1
0x645b:  ce 50 54       ldw X, $5054                             cycles=2
0x645e:  c7 52 80       ld $5280,A                               cycles=1
0x6461:  c7 52 8e       ld $528e,A                               cycles=1
0x6464:  ce 52 86       ldw X, $5286                             cycles=2
0x6467:  c7 52 8c       ld $528c,A                               cycles=1
0x646a:  c7 52 8d       ld $528d,A                               cycles=1
0x646d:  c7 52 50       ld $5250,A                               cycles=1
0x6470:  ce 52 56       ldw X, $5256                             cycles=2
0x6473:  c7 52 5c       ld $525c,A                               cycles=1
0x6476:  c7 52 5d       ld $525d,A                               cycles=1
0x6479:  35 00 50 52    mov $5052, #$00                          cycles=1
0x647d:  35 00 50 52    mov $5052, #$00                          cycles=1
0x6481:  35 00 50 53    mov $5053, #$00                          cycles=1
0x6485:  35 00 50 53    mov $5053, #$00                          cycles=1
0x6489:  72 15 50 0d    bres $500d, #2                           cycles=1
0x648d:  c7 52 34       ld $5234,A                               cycles=1
0x6490:  c7 52 35       ld $5235,A                               cycles=1
0x6493:  ce 52 30       ldw X, $5230                             cycles=2
0x6496:  c7 52 31       ld $5231,A                               cycles=1
0x6499:  c7 52 32       ld $5232,A                               cycles=1
0x649c:  c7 52 33       ld $5233,A                               cycles=1
0x649f:  c7 50 c3       ld $50c3,A                               cycles=1
0x64a2:  a6 03          ld A, #$03                               cycles=1
0x64a4:  c7 50 c0       ld $50c0,A                               cycles=1
0x64a7:  81             ret                                      cycles=4
0x64a8:  a4 1f          and A, #$1f                              cycles=1
0x64aa:  b7 02          ld $02,A                                 cycles=1
0x64ac:  ae 64 dd       ldw X, #$64dd                            cycles=2
0x64af:  e6 02          ld A, ($02,X)                            cycles=1
0x64b1:  27 27          jreq $64da  (offset=39)                  cycles=1-2
0x64b3:  a5 60          bcp A, #$60                              cycles=1
0x64b5:  26 04          jrne $64bb  (offset=4)                   cycles=1-2
0x64b7:  b1 02          cp A, $02                                cycles=1
0x64b9:  27 05          jreq $64c0  (offset=5)                   cycles=1-2
0x64bb:  1c 00 05       addw X, #$5                              cycles=2
0x64be:  20 ef          jra $64af  (offset=-17)                  cycles=2
0x64c0:  90 93          ldw Y, X                                 cycles=1
0x64c2:  90 ee 05       ldw Y, ($05,Y)                           cycles=2
0x64c5:  90 bf 00       ldw $00,Y                                cycles=2
0x64c8:  90 93          ldw Y, X                                 cycles=1
0x64ca:  90 ee 03       ldw Y, ($03,Y)                           cycles=2
0x64cd:  fe             ldw X, (X)                               cycles=2
0x64ce:  f6             ld A, (X)                                cycles=1
0x64cf:  90 f7          ld (Y),A                                 cycles=1
0x64d1:  90 5c          incw Y                                   cycles=1
0x64d3:  5c             incw X                                   cycles=1
0x64d4:  b3 00          cpw X, $00                               cycles=2
0x64d6:  26 f6          jrne $64ce  (offset=-10)                 cycles=1-2
0x64d8:  a6 01          ld A, #$01                               cycles=1
0x64da:  5f             clrw X                                   cycles=1
0x64db:  97             ld XL, A                                 cycles=1
0x64dc:  81             ret                                      cycles=4
0x64dd:  64 e5          srl ($e5,X)                              cycles=1
0x64df:  05             ???                                      cycles=?
0x64e0:  01             rrwa X, A                                cycles=1
0x64e1:  00 65          neg ($65,SP)                             cycles=1
0x64e3:  e2 00          sbc A, ($00,X)                           cycles=1
0x64e5:  5f             clrw X                                   cycles=1
0x64e6:  72 5f 00 93    clr $93                                  cycles=1
0x64ea:  72 09 00 91 1c btjf $91, #4, $650b  (offset=28)         cycles=2-3
0x64ef:  cd 01 ec       call $1ec                                cycles=4
0x64f2:  c6 00 93       ld A, $93                                cycles=1
0x64f5:  d7 00 03       ld ($3,X),A                              cycles=1
0x64f8:  5c             incw X                                   cycles=1
0x64f9:  4c             inc A                                    cycles=1
0x64fa:  c7 00 93       ld $93,A                                 cycles=1
0x64fd:  a1 21          cp A, #$21                               cycles=1
0x64ff:  26 ee          jrne $64ef  (offset=-18)                 cycles=1-2
0x6501:  a6 20          ld A, #$20                               cycles=1
0x6503:  c7 00 8b       ld $8b,A                                 cycles=1
0x6506:  5f             clrw X                                   cycles=1
0x6507:  72 5f 00 93    clr $93                                  cycles=1
0x650b:  d6 00 03       ld A, ($3,X)                             cycles=1
0x650e:  a1 20          cp A, #$20                               cycles=1
0x6510:  26 09          jrne $651b  (offset=9)                   cycles=1-2
0x6512:  72 5f 00 8d    clr $8d                                  cycles=1
0x6516:  ae 10 00       ldw X, #$1000                            cycles=2
0x6519:  20 0e          jra $6529  (offset=14)                   cycles=2
0x651b:  72 5f 00 8d    clr $8d                                  cycles=1
0x651f:  ae 00 80       ldw X, #$80                              cycles=2
0x6522:  42             mul X, A                                 cycles=4
0x6523:  58             sllw X                                   cycles=2
0x6524:  58             sllw X                                   cycles=2
0x6525:  58             sllw X                                   cycles=2
0x6526:  1c 80 00       addw X, #$8000                           cycles=2
0x6529:  90 5f          clrw Y                                   cycles=1
0x652b:  cd 01 ec       call $1ec                                cycles=4
0x652e:  9e             ld A, XH                                 cycles=1
0x652f:  c7 00 8e       ld $8e,A                                 cycles=1
0x6532:  9f             ld A, XL                                 cycles=1
0x6533:  c7 00 8f       ld $8f,A                                 cycles=1
0x6536:  a6 20          ld A, #$20                               cycles=1
0x6538:  c7 50 51       ld $5051,A                               cycles=1
0x653b:  4f             clr A                                    cycles=1
0x653c:  92 bd 00 8d    ldf [$8d.e],A                            cycles=4
0x6540:  5c             incw X                                   cycles=1
0x6541:  9f             ld A, XL                                 cycles=1
0x6542:  c7 00 8f       ld $8f,A                                 cycles=1
0x6545:  4f             clr A                                    cycles=1
0x6546:  92 bd 00 8d    ldf [$8d.e],A                            cycles=4
0x654a:  5c             incw X                                   cycles=1
0x654b:  9f             ld A, XL                                 cycles=1
0x654c:  c7 00 8f       ld $8f,A                                 cycles=1
0x654f:  4f             clr A                                    cycles=1
0x6550:  92 bd 00 8d    ldf [$8d.e],A                            cycles=4
0x6554:  5c             incw X                                   cycles=1
0x6555:  9f             ld A, XL                                 cycles=1
0x6556:  c7 00 8f       ld $8f,A                                 cycles=1
0x6559:  4f             clr A                                    cycles=1
0x655a:  92 bd 00 8d    ldf [$8d.e],A                            cycles=4
0x655e:  72 05 50 54 fb btjf $5054, #2, $655e  (offset=-5)       cycles=2-3
0x6563:  90 a3 00 07    cpw Y, #$7                               cycles=2
0x6567:  27 0a          jreq $6573  (offset=10)                  cycles=1-2
0x6569:  90 5c          incw Y                                   cycles=1
0x656b:  1d 00 03       subw X, #$3                              cycles=2
0x656e:  1c 00 80       addw X, #$80                             cycles=2
0x6571:  20 b8          jra $652b  (offset=-72)                  cycles=2
0x6573:  c6 00 93       ld A, $93                                cycles=1
0x6576:  c1 00 8b       cp A, $8b                                cycles=1
0x6579:  27 0b          jreq $6586  (offset=11)                  cycles=1-2
0x657b:  5f             clrw X                                   cycles=1
0x657c:  72 5c 00 93    inc $93                                  cycles=1
0x6580:  c6 00 93       ld A, $93                                cycles=1
0x6583:  97             ld XL, A                                 cycles=1
0x6584:  20 85          jra $650b  (offset=-123)                 cycles=2
0x6586:  81             ret                                      cycles=4
0x6587:  5f             clrw X                                   cycles=1
0x6588:  72 0d 00 91 14 btjf $91, #6, $65a1  (offset=20)         cycles=2-3
0x658d:  72 00 00 97 07 btjt $97, #0, $6599  (offset=7)          cycles=2-3
0x6592:  a6 01          ld A, #$01                               cycles=1
0x6594:  c7 50 51       ld $5051,A                               cycles=1
0x6597:  20 08          jra $65a1  (offset=8)                    cycles=2
0x6599:  35 81 50 51    mov $5051, #$81                          cycles=1
0x659d:  72 5f 00 97    clr $97                                  cycles=1
0x65a1:  72 01 00 97 04 btjf $97, #0, $65aa  (offset=4)          cycles=2-3
0x65a6:  35 80 50 51    mov $5051, #$80                          cycles=1
0x65aa:  ad 25          callr $65d1  (offset=37)                 cycles=4
0x65ac:  d6 00 03       ld A, ($3,X)                             cycles=1
0x65af:  92 a7 00 8d    ldf ([$8d.e],X),A                        cycles=4
0x65b3:  72 0c 00 91 05 btjt $91, #6, $65bd  (offset=5)          cycles=2-3
0x65b8:  72 05 50 54 fb btjf $5054, #2, $65b8  (offset=-5)       cycles=2-3
0x65bd:  9f             ld A, XL                                 cycles=1
0x65be:  c1 00 8b       cp A, $8b                                cycles=1
0x65c1:  27 03          jreq $65c6  (offset=3)                   cycles=1-2
0x65c3:  5c             incw X                                   cycles=1
0x65c4:  20 db          jra $65a1  (offset=-37)                  cycles=2
0x65c6:  72 0d 00 91 05 btjf $91, #6, $65d0  (offset=5)          cycles=2-3
0x65cb:  72 05 50 54 fb btjf $5054, #2, $65cb  (offset=-5)       cycles=2-3
0x65d0:  81             ret                                      cycles=4
0x65d1:  35 55 50 e0    mov $50e0, #$55                          cycles=1
0x65d5:  35 05 50 e1    mov $50e1, #$05                          cycles=1
0x65d9:  35 aa 50 e0    mov $50e0, #$aa                          cycles=1
0x65dd:  35 7f 50 d3    mov $50d3, #$7f                          cycles=1
0x65e1:  81             ret                                      cycles=4
0x65e2:  71             ???                                      cycles=?
0x65e3:  71             ???                                      cycles=?
0x65e4:  71             ???                                      cycles=?
0x65e5:  71             ???                                      cycles=?
0x65e6:  71             ???                                      cycles=?
0x65e7:  71             ???                                      cycles=?
0x65e8:  71             ???                                      cycles=?
0x65e9:  71             ???                                      cycles=?
0x65ea:  71             ???                                      cycles=?
0x65eb:  71             ???                                      cycles=?
0x65ec:  71             ???                                      cycles=?
0x65ed:  71             ???                                      cycles=?
0x65ee:  71             ???                                      cycles=?
0x65ef:  71             ???                                      cycles=?
0x65f0:  71             ???                                      cycles=?
0x65f1:  71             ???                                      cycles=?
0x65f2:  71             ???                                      cycles=?
0x65f3:  71             ???                                      cycles=?
0x65f4:  71             ???                                      cycles=?
0x65f5:  71             ???                                      cycles=?
0x65f6:  71             ???                                      cycles=?
0x65f7:  71             ???                                      cycles=?
0x65f8:  71             ???                                      cycles=?
0x65f9:  71             ???                                      cycles=?
0x65fa:  71             ???                                      cycles=?
0x65fb:  71             ???                                      cycles=?
0x65fc:  71             ???                                      cycles=?
0x65fd:  71             ???                                      cycles=?
0x65fe:  71             ???                                      cycles=?
0x65ff:  71             ???                                      cycles=?
0x6600:  71             ???                                      cycles=?
0x6601:  71             ???                                      cycles=?
0x6602:  71             ???                                      cycles=?
0x6603:  71             ???                                      cycles=?
0x6604:  71             ???                                      cycles=?
0x6605:  71             ???                                      cycles=?
0x6606:  71             ???                                      cycles=?
0x6607:  71             ???                                      cycles=?
0x6608:  71             ???                                      cycles=?
0x6609:  71             ???                                      cycles=?
0x660a:  71             ???                                      cycles=?
0x660b:  71             ???                                      cycles=?
0x660c:  71             ???                                      cycles=?
0x660d:  71             ???                                      cycles=?
0x660e:  71             ???                                      cycles=?
0x660f:  71             ???                                      cycles=?
0x6610:  71             ???                                      cycles=?
0x6611:  71             ???                                      cycles=?
0x6612:  71             ???                                      cycles=?
0x6613:  71             ???                                      cycles=?
0x6614:  71             ???                                      cycles=?
0x6615:  71             ???                                      cycles=?
0x6616:  71             ???                                      cycles=?
0x6617:  71             ???                                      cycles=?
0x6618:  71             ???                                      cycles=?
0x6619:  71             ???                                      cycles=?
0x661a:  71             ???                                      cycles=?
0x661b:  71             ???                                      cycles=?
0x661c:  71             ???                                      cycles=?
0x661d:  71             ???                                      cycles=?
0x661e:  71             ???                                      cycles=?
0x661f:  71             ???                                      cycles=?
0x6620:  71             ???                                      cycles=?
0x6621:  71             ???                                      cycles=?
0x6622:  71             ???                                      cycles=?
0x6623:  71             ???                                      cycles=?
0x6624:  71             ???                                      cycles=?
0x6625:  71             ???                                      cycles=?
0x6626:  71             ???                                      cycles=?
0x6627:  71             ???                                      cycles=?
0x6628:  71             ???                                      cycles=?
0x6629:  71             ???                                      cycles=?
0x662a:  71             ???                                      cycles=?
0x662b:  71             ???                                      cycles=?
0x662c:  71             ???                                      cycles=?
0x662d:  71             ???                                      cycles=?
0x662e:  71             ???                                      cycles=?
0x662f:  71             ???                                      cycles=?
0x6630:  71             ???                                      cycles=?
0x6631:  71             ???                                      cycles=?
0x6632:  71             ???                                      cycles=?
0x6633:  71             ???                                      cycles=?
0x6634:  71             ???                                      cycles=?
0x6635:  71             ???                                      cycles=?
0x6636:  71             ???                                      cycles=?
0x6637:  71             ???                                      cycles=?
0x6638:  71             ???                                      cycles=?
0x6639:  71             ???                                      cycles=?
0x663a:  71             ???                                      cycles=?
0x663b:  71             ???                                      cycles=?
0x663c:  71             ???                                      cycles=?
0x663d:  71             ???                                      cycles=?
0x663e:  71             ???                                      cycles=?
0x663f:  71             ???                                      cycles=?
0x6640:  71             ???                                      cycles=?
0x6641:  71             ???                                      cycles=?
0x6642:  71             ???                                      cycles=?
0x6643:  71             ???                                      cycles=?
0x6644:  71             ???                                      cycles=?
0x6645:  71             ???                                      cycles=?
0x6646:  71             ???                                      cycles=?
0x6647:  71             ???                                      cycles=?
0x6648:  71             ???                                      cycles=?
0x6649:  71             ???                                      cycles=?
0x664a:  71             ???                                      cycles=?
0x664b:  71             ???                                      cycles=?
0x664c:  71             ???                                      cycles=?
0x664d:  71             ???                                      cycles=?
0x664e:  71             ???                                      cycles=?
0x664f:  71             ???                                      cycles=?
0x6650:  71             ???                                      cycles=?
0x6651:  71             ???                                      cycles=?
0x6652:  71             ???                                      cycles=?
0x6653:  71             ???                                      cycles=?
0x6654:  71             ???                                      cycles=?
0x6655:  71             ???                                      cycles=?
0x6656:  71             ???                                      cycles=?
0x6657:  71             ???                                      cycles=?
0x6658:  71             ???                                      cycles=?
0x6659:  71             ???                                      cycles=?
0x665a:  71             ???                                      cycles=?
0x665b:  71             ???                                      cycles=?
0x665c:  71             ???                                      cycles=?
0x665d:  71             ???                                      cycles=?
0x665e:  71             ???                                      cycles=?
0x665f:  71             ???                                      cycles=?
0x6660:  71             ???                                      cycles=?
0x6661:  71             ???                                      cycles=?
0x6662:  71             ???                                      cycles=?
0x6663:  71             ???                                      cycles=?
0x6664:  71             ???                                      cycles=?
0x6665:  71             ???                                      cycles=?
0x6666:  71             ???                                      cycles=?
0x6667:  71             ???                                      cycles=?
0x6668:  71             ???                                      cycles=?
0x6669:  71             ???                                      cycles=?
0x666a:  71             ???                                      cycles=?
0x666b:  71             ???                                      cycles=?
0x666c:  71             ???                                      cycles=?
0x666d:  71             ???                                      cycles=?
0x666e:  71             ???                                      cycles=?
0x666f:  71             ???                                      cycles=?
0x6670:  71             ???                                      cycles=?
0x6671:  71             ???                                      cycles=?
0x6672:  71             ???                                      cycles=?
0x6673:  71             ???                                      cycles=?
0x6674:  71             ???                                      cycles=?
0x6675:  71             ???                                      cycles=?
0x6676:  71             ???                                      cycles=?
0x6677:  71             ???                                      cycles=?
0x6678:  71             ???                                      cycles=?
0x6679:  71             ???                                      cycles=?
0x667a:  71             ???                                      cycles=?
0x667b:  71             ???                                      cycles=?
0x667c:  71             ???                                      cycles=?
0x667d:  71             ???                                      cycles=?
0x667e:  71             ???                                      cycles=?
0x667f:  71             ???                                      cycles=?
0x6680:  71             ???                                      cycles=?
0x6681:  71             ???                                      cycles=?
0x6682:  71             ???                                      cycles=?
0x6683:  71             ???                                      cycles=?
0x6684:  71             ???                                      cycles=?
0x6685:  71             ???                                      cycles=?
0x6686:  71             ???                                      cycles=?
0x6687:  71             ???                                      cycles=?
0x6688:  71             ???                                      cycles=?
0x6689:  71             ???                                      cycles=?
0x668a:  71             ???                                      cycles=?
0x668b:  71             ???                                      cycles=?
0x668c:  71             ???                                      cycles=?
0x668d:  71             ???                                      cycles=?
0x668e:  71             ???                                      cycles=?
0x668f:  71             ???                                      cycles=?
0x6690:  71             ???                                      cycles=?
0x6691:  71             ???                                      cycles=?
0x6692:  71             ???                                      cycles=?
0x6693:  71             ???                                      cycles=?
0x6694:  71             ???                                      cycles=?
0x6695:  71             ???                                      cycles=?
0x6696:  71             ???                                      cycles=?
0x6697:  71             ???                                      cycles=?
0x6698:  71             ???                                      cycles=?
0x6699:  71             ???                                      cycles=?
0x669a:  71             ???                                      cycles=?
0x669b:  71             ???                                      cycles=?
0x669c:  71             ???                                      cycles=?
0x669d:  71             ???                                      cycles=?
0x669e:  71             ???                                      cycles=?
0x669f:  71             ???                                      cycles=?
0x66a0:  71             ???                                      cycles=?
0x66a1:  71             ???                                      cycles=?
0x66a2:  71             ???                                      cycles=?
0x66a3:  71             ???                                      cycles=?
0x66a4:  71             ???                                      cycles=?
0x66a5:  71             ???                                      cycles=?
0x66a6:  71             ???                                      cycles=?
0x66a7:  71             ???                                      cycles=?
0x66a8:  71             ???                                      cycles=?
0x66a9:  71             ???                                      cycles=?
0x66aa:  71             ???                                      cycles=?
0x66ab:  71             ???                                      cycles=?
0x66ac:  71             ???                                      cycles=?
0x66ad:  71             ???                                      cycles=?
0x66ae:  71             ???                                      cycles=?
0x66af:  71             ???                                      cycles=?
0x66b0:  71             ???                                      cycles=?
0x66b1:  71             ???                                      cycles=?
0x66b2:  71             ???                                      cycles=?
0x66b3:  71             ???                                      cycles=?
0x66b4:  71             ???                                      cycles=?
0x66b5:  71             ???                                      cycles=?
0x66b6:  71             ???                                      cycles=?
0x66b7:  71             ???                                      cycles=?
0x66b8:  71             ???                                      cycles=?
0x66b9:  71             ???                                      cycles=?
0x66ba:  71             ???                                      cycles=?
0x66bb:  71             ???                                      cycles=?
0x66bc:  71             ???                                      cycles=?
0x66bd:  71             ???                                      cycles=?
0x66be:  71             ???                                      cycles=?
0x66bf:  71             ???                                      cycles=?
0x66c0:  71             ???                                      cycles=?
0x66c1:  71             ???                                      cycles=?
0x66c2:  71             ???                                      cycles=?
0x66c3:  71             ???                                      cycles=?
0x66c4:  71             ???                                      cycles=?
0x66c5:  71             ???                                      cycles=?
0x66c6:  71             ???                                      cycles=?
0x66c7:  71             ???                                      cycles=?
0x66c8:  71             ???                                      cycles=?
0x66c9:  71             ???                                      cycles=?
0x66ca:  71             ???                                      cycles=?
0x66cb:  71             ???                                      cycles=?
0x66cc:  71             ???                                      cycles=?
0x66cd:  71             ???                                      cycles=?
0x66ce:  71             ???                                      cycles=?
0x66cf:  71             ???                                      cycles=?
0x66d0:  71             ???                                      cycles=?
0x66d1:  71             ???                                      cycles=?
0x66d2:  71             ???                                      cycles=?
0x66d3:  71             ???                                      cycles=?
0x66d4:  71             ???                                      cycles=?
0x66d5:  71             ???                                      cycles=?
0x66d6:  71             ???                                      cycles=?
0x66d7:  71             ???                                      cycles=?
0x66d8:  71             ???                                      cycles=?
0x66d9:  71             ???                                      cycles=?
0x66da:  71             ???                                      cycles=?
0x66db:  71             ???                                      cycles=?
0x66dc:  71             ???                                      cycles=?
0x66dd:  71             ???                                      cycles=?
0x66de:  71             ???                                      cycles=?
0x66df:  71             ???                                      cycles=?
0x66e0:  71             ???                                      cycles=?
0x66e1:  71             ???                                      cycles=?
0x66e2:  71             ???                                      cycles=?
0x66e3:  71             ???                                      cycles=?
0x66e4:  71             ???                                      cycles=?
0x66e5:  71             ???                                      cycles=?
0x66e6:  71             ???                                      cycles=?
0x66e7:  71             ???                                      cycles=?
0x66e8:  71             ???                                      cycles=?
0x66e9:  71             ???                                      cycles=?
0x66ea:  71             ???                                      cycles=?
0x66eb:  71             ???                                      cycles=?
0x66ec:  71             ???                                      cycles=?
0x66ed:  71             ???                                      cycles=?
0x66ee:  71             ???                                      cycles=?
0x66ef:  71             ???                                      cycles=?
0x66f0:  71             ???                                      cycles=?
0x66f1:  71             ???                                      cycles=?
0x66f2:  71             ???                                      cycles=?
0x66f3:  71             ???                                      cycles=?
0x66f4:  71             ???                                      cycles=?
0x66f5:  71             ???                                      cycles=?
0x66f6:  71             ???                                      cycles=?
0x66f7:  71             ???                                      cycles=?
0x66f8:  71             ???                                      cycles=?
0x66f9:  71             ???                                      cycles=?
0x66fa:  71             ???                                      cycles=?
0x66fb:  71             ???                                      cycles=?
0x66fc:  71             ???                                      cycles=?
0x66fd:  71             ???                                      cycles=?
0x66fe:  71             ???                                      cycles=?
0x66ff:  71             ???                                      cycles=?
0x6700:  71             ???                                      cycles=?
0x6701:  71             ???                                      cycles=?
0x6702:  71             ???                                      cycles=?
0x6703:  71             ???                                      cycles=?
0x6704:  71             ???                                      cycles=?
0x6705:  71             ???                                      cycles=?
0x6706:  71             ???                                      cycles=?
0x6707:  71             ???                                      cycles=?
0x6708:  71             ???                                      cycles=?
0x6709:  71             ???                                      cycles=?
0x670a:  71             ???                                      cycles=?
0x670b:  71             ???                                      cycles=?
0x670c:  71             ???                                      cycles=?
0x670d:  71             ???                                      cycles=?
0x670e:  71             ???                                      cycles=?
0x670f:  71             ???                                      cycles=?
0x6710:  71             ???                                      cycles=?
0x6711:  71             ???                                      cycles=?
0x6712:  71             ???                                      cycles=?
0x6713:  71             ???                                      cycles=?
0x6714:  71             ???                                      cycles=?
0x6715:  71             ???                                      cycles=?
0x6716:  71             ???                                      cycles=?
0x6717:  71             ???                                      cycles=?
0x6718:  71             ???                                      cycles=?
0x6719:  71             ???                                      cycles=?
0x671a:  71             ???                                      cycles=?
0x671b:  71             ???                                      cycles=?
0x671c:  71             ???                                      cycles=?
0x671d:  71             ???                                      cycles=?
0x671e:  71             ???                                      cycles=?
0x671f:  71             ???                                      cycles=?
0x6720:  71             ???                                      cycles=?
0x6721:  71             ???                                      cycles=?
0x6722:  71             ???                                      cycles=?
0x6723:  71             ???                                      cycles=?
0x6724:  71             ???                                      cycles=?
0x6725:  71             ???                                      cycles=?
0x6726:  71             ???                                      cycles=?
0x6727:  71             ???                                      cycles=?
0x6728:  71             ???                                      cycles=?
0x6729:  71             ???                                      cycles=?
0x672a:  71             ???                                      cycles=?
0x672b:  71             ???                                      cycles=?
0x672c:  71             ???                                      cycles=?
0x672d:  71             ???                                      cycles=?
0x672e:  71             ???                                      cycles=?
0x672f:  71             ???                                      cycles=?
0x6730:  71             ???                                      cycles=?
0x6731:  71             ???                                      cycles=?
0x6732:  71             ???                                      cycles=?
0x6733:  71             ???                                      cycles=?
0x6734:  71             ???                                      cycles=?
0x6735:  71             ???                                      cycles=?
0x6736:  71             ???                                      cycles=?
0x6737:  71             ???                                      cycles=?
0x6738:  71             ???                                      cycles=?
0x6739:  71             ???                                      cycles=?
0x673a:  71             ???                                      cycles=?
0x673b:  71             ???                                      cycles=?
0x673c:  71             ???                                      cycles=?
0x673d:  71             ???                                      cycles=?
0x673e:  71             ???                                      cycles=?
0x673f:  71             ???                                      cycles=?
0x6740:  71             ???                                      cycles=?
0x6741:  71             ???                                      cycles=?
0x6742:  71             ???                                      cycles=?
0x6743:  71             ???                                      cycles=?
0x6744:  71             ???                                      cycles=?
0x6745:  71             ???                                      cycles=?
0x6746:  71             ???                                      cycles=?
0x6747:  71             ???                                      cycles=?
0x6748:  71             ???                                      cycles=?
0x6749:  71             ???                                      cycles=?
0x674a:  71             ???                                      cycles=?
0x674b:  71             ???                                      cycles=?
0x674c:  71             ???                                      cycles=?
0x674d:  71             ???                                      cycles=?
0x674e:  71             ???                                      cycles=?
0x674f:  71             ???                                      cycles=?
0x6750:  71             ???                                      cycles=?
0x6751:  71             ???                                      cycles=?
0x6752:  71             ???                                      cycles=?
0x6753:  71             ???                                      cycles=?
0x6754:  71             ???                                      cycles=?
0x6755:  71             ???                                      cycles=?
0x6756:  71             ???                                      cycles=?
0x6757:  71             ???                                      cycles=?
0x6758:  71             ???                                      cycles=?
0x6759:  71             ???                                      cycles=?
0x675a:  71             ???                                      cycles=?
0x675b:  71             ???                                      cycles=?
0x675c:  71             ???                                      cycles=?
0x675d:  71             ???                                      cycles=?
0x675e:  71             ???                                      cycles=?
0x675f:  71             ???                                      cycles=?
0x6760:  71             ???                                      cycles=?
0x6761:  71             ???                                      cycles=?
0x6762:  71             ???                                      cycles=?
0x6763:  71             ???                                      cycles=?
0x6764:  71             ???                                      cycles=?
0x6765:  71             ???                                      cycles=?
0x6766:  71             ???                                      cycles=?
0x6767:  71             ???                                      cycles=?
0x6768:  71             ???                                      cycles=?
0x6769:  71             ???                                      cycles=?
0x676a:  71             ???                                      cycles=?
0x676b:  71             ???                                      cycles=?
0x676c:  71             ???                                      cycles=?
0x676d:  71             ???                                      cycles=?
0x676e:  71             ???                                      cycles=?
0x676f:  71             ???                                      cycles=?
0x6770:  71             ???                                      cycles=?
0x6771:  71             ???                                      cycles=?
0x6772:  71             ???                                      cycles=?
0x6773:  71             ???                                      cycles=?
0x6774:  71             ???                                      cycles=?
0x6775:  71             ???                                      cycles=?
0x6776:  71             ???                                      cycles=?
0x6777:  71             ???                                      cycles=?
0x6778:  71             ???                                      cycles=?
0x6779:  71             ???                                      cycles=?
0x677a:  71             ???                                      cycles=?
0x677b:  71             ???                                      cycles=?
0x677c:  71             ???                                      cycles=?
0x677d:  71             ???                                      cycles=?
0x677e:  71             ???                                      cycles=?
0x677f:  71             ???                                      cycles=?
0x6780:  71             ???                                      cycles=?
0x6781:  71             ???                                      cycles=?
0x6782:  71             ???                                      cycles=?
0x6783:  71             ???                                      cycles=?
0x6784:  71             ???                                      cycles=?
0x6785:  71             ???                                      cycles=?
0x6786:  71             ???                                      cycles=?
0x6787:  71             ???                                      cycles=?
0x6788:  71             ???                                      cycles=?
0x6789:  71             ???                                      cycles=?
0x678a:  71             ???                                      cycles=?
0x678b:  71             ???                                      cycles=?
0x678c:  71             ???                                      cycles=?
0x678d:  71             ???                                      cycles=?
0x678e:  71             ???                                      cycles=?
0x678f:  71             ???                                      cycles=?
0x6790:  71             ???                                      cycles=?
0x6791:  71             ???                                      cycles=?
0x6792:  71             ???                                      cycles=?
0x6793:  71             ???                                      cycles=?
0x6794:  71             ???                                      cycles=?
0x6795:  71             ???                                      cycles=?
0x6796:  71             ???                                      cycles=?
0x6797:  71             ???                                      cycles=?
0x6798:  71             ???                                      cycles=?
0x6799:  71             ???                                      cycles=?
0x679a:  71             ???                                      cycles=?
0x679b:  71             ???                                      cycles=?
0x679c:  71             ???                                      cycles=?
0x679d:  71             ???                                      cycles=?
0x679e:  71             ???                                      cycles=?
0x679f:  71             ???                                      cycles=?
0x67a0:  71             ???                                      cycles=?
0x67a1:  71             ???                                      cycles=?
0x67a2:  71             ???                                      cycles=?
0x67a3:  71             ???                                      cycles=?
0x67a4:  71             ???                                      cycles=?
0x67a5:  71             ???                                      cycles=?
0x67a6:  71             ???                                      cycles=?
0x67a7:  71             ???                                      cycles=?
0x67a8:  71             ???                                      cycles=?
0x67a9:  71             ???                                      cycles=?
0x67aa:  71             ???                                      cycles=?
0x67ab:  71             ???                                      cycles=?
0x67ac:  71             ???                                      cycles=?
0x67ad:  71             ???                                      cycles=?
0x67ae:  71             ???                                      cycles=?
0x67af:  71             ???                                      cycles=?
0x67b0:  71             ???                                      cycles=?
0x67b1:  71             ???                                      cycles=?
0x67b2:  71             ???                                      cycles=?
0x67b3:  71             ???                                      cycles=?
0x67b4:  71             ???                                      cycles=?
0x67b5:  71             ???                                      cycles=?
0x67b6:  71             ???                                      cycles=?
0x67b7:  71             ???                                      cycles=?
0x67b8:  71             ???                                      cycles=?
0x67b9:  71             ???                                      cycles=?
0x67ba:  71             ???                                      cycles=?
0x67bb:  71             ???                                      cycles=?
0x67bc:  71             ???                                      cycles=?
0x67bd:  71             ???                                      cycles=?
0x67be:  71             ???                                      cycles=?
0x67bf:  71             ???                                      cycles=?
0x67c0:  71             ???                                      cycles=?
0x67c1:  71             ???                                      cycles=?
0x67c2:  71             ???                                      cycles=?
0x67c3:  71             ???                                      cycles=?
0x67c4:  71             ???                                      cycles=?
0x67c5:  71             ???                                      cycles=?
0x67c6:  71             ???                                      cycles=?
0x67c7:  71             ???                                      cycles=?
0x67c8:  71             ???                                      cycles=?
0x67c9:  71             ???                                      cycles=?
0x67ca:  71             ???                                      cycles=?
0x67cb:  71             ???                                      cycles=?
0x67cc:  71             ???                                      cycles=?
0x67cd:  71             ???                                      cycles=?
0x67ce:  71             ???                                      cycles=?
0x67cf:  71             ???                                      cycles=?
0x67d0:  71             ???                                      cycles=?
0x67d1:  71             ???                                      cycles=?
0x67d2:  71             ???                                      cycles=?
0x67d3:  71             ???                                      cycles=?
0x67d4:  71             ???                                      cycles=?
0x67d5:  71             ???                                      cycles=?
0x67d6:  71             ???                                      cycles=?
0x67d7:  71             ???                                      cycles=?
0x67d8:  71             ???                                      cycles=?
0x67d9:  71             ???                                      cycles=?
0x67da:  71             ???                                      cycles=?
0x67db:  71             ???                                      cycles=?
0x67dc:  71             ???                                      cycles=?
0x67dd:  71             ???                                      cycles=?
0x67de:  71             ???                                      cycles=?
0x67df:  71             ???                                      cycles=?
0x67e0:  71             ???                                      cycles=?
0x67e1:  71             ???                                      cycles=?
0x67e2:  71             ???                                      cycles=?
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
0x67ef:  71             ???                                      cycles=?
0x67f0:  71             ???                                      cycles=?
0x67f1:  71             ???                                      cycles=?
0x67f2:  71             ???                                      cycles=?
0x67f3:  71             ???                                      cycles=?
0x67f4:  71             ???                                      cycles=?
0x67f5:  71             ???                                      cycles=?
0x67f6:  71             ???                                      cycles=?
0x67f7:  71             ???                                      cycles=?
0x67f8:  71             ???                                      cycles=?
0x67f9:  71             ???                                      cycles=?
0x67fa:  71             ???                                      cycles=?
0x67fb:  71             ???                                      cycles=?
0x67fc:  b0 db          sub A, $db                               cycles=1
0x67fe:  f4             and A, (X)                               cycles=1
0x67ff:  8a             push CC                                  cycles=1
