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

extern void flash_erase_enable(void);
extern void flash_block_prg_enable(void);
extern void flash_block_prg_option_wr_enable(void);
extern void flash_prg_wait(uint8_t *prot_flag);

// Function in bootloader ROM that refreshes the watchdog.
// Location is specified at link time. See *.lk command files.
extern void watchdog_refresh(void);

/*
Global variables map:

Addr		Size	Comment
-------------------------------
0x0-0x81	130		data buffer (i.e. erase sector numbers, bytes to be written)
0x82		1		bootloader command (e.g. 0x31 for WRITE)
0x83		1		bootloader command complement/inverse (e.g. 0xCE for WRITE)
0x88		1		data buffer length minus one (i.e. max sector num for erase, num of bytes + 1 to be written)
0x8A		1		e }
0x8B		1		h } 24-bit memory address
0x8C		1		l }
0x8E		1		some kind of status bit flag field?
0x8F		1		used for calculating checksums?
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
