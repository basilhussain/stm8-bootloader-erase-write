#include <stdint.h>

#define _SFR(mem_addr) (*(volatile uint8_t *)(mem_addr))

#define FLASH_CR2 _SFR(0x505B)
#define FLASH_CR2_PRG 0
#define FLASH_CR2_FPRG 4
#define FLASH_CR2_ERASE 5
#define FLASH_CR2_WPRG 6
#define FLASH_CR2_OPT 7

#define FLASH_NCR2 _SFR(0x505C)
#define FLASH_NCR2_NPRG 0
#define FLASH_NCR2_NFPRG 4
#define FLASH_NCR2_NERASE 5
#define FLASH_NCR2_NWPRG 6
#define FLASH_NCR2_NOPT 7

#define FLASH_IAPSR _SFR(0x505F)
#define FLASH_IAPSR_WR_PG_DIS 0
#define FLASH_IAPSR_PUL 1
#define FLASH_IAPSR_EOP 2
#define FLASH_IAPSR_DUL 3
#define FLASH_IAPSR_HVOFF 6

/******************************************************************************/

// 24-bit extended memory address type
typedef struct {
	uint8_t e; // extended byte
	uint16_t hl; // high & low bytes
} addr_t;


// NOTE: locations of global variables are only compatible with 128K devices with ROM bootloader version 2.4.

// Function in bootloader ROM (at 0x608A) that refreshes the watchdog.
// Location is specified at link time. See *.lk command files.
extern void watchdog_refresh(void);
// Alternatively... (okay to do, because function doesn't have any side effects)
// #define watchdog_refresh() do { __asm__("call 0x608a"); } while(0)

/*
Global variables map:

Addr		Size	Comment
-------------------------------
0x0-0x81	130		buffer of stuff? (i.e. erase sector numbers)?
0x88		1		buffer length? (max sector num for erase? num of bytes for write?)
0x8A		1		e }
0x8B		1		h } 24-bit memory address
0x8C		1		l }
0x8E		1		some kind of bit flag field?
0x90		1		sector number for erase?
0x98		1	
0x9b		1		also some kind of status bit flag field for erase?
0x9c		1		some kind of status bit flag field for write?
0x95		1		} location depending on bootloader version
0x99		1		} bootloader timeout (0x00 = no timeout, 0x01 = 1 second bootloader timeout)

*/

// Locations are specified at link time according to compatibility with ROM
// bootloader version. See *.lk command files.
extern uint8_t global_0x00[130];
extern uint8_t global_0x88;
extern addr_t global_0x8a;
extern uint8_t global_0x8e;
extern uint8_t global_0x90;
extern uint8_t global_0x98;
extern uint8_t global_0x9b;
extern uint8_t global_0x9c;
