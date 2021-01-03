/*******************************************************************************
 *
 * common.h - Common header file
 *
 * Copyright 2021 Basil Hussain
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 ******************************************************************************/

#ifndef COMMON_H_
#define COMMON_H_

#include <stdint.h>
#include <stdbool.h>

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

#ifndef STATUS_STRUCT
#define STATUS_SYNC_UART1 0
#define STATUS_SYNC_CAN 1
#define STATUS_SYNC_UART3 2
#define STATUS_SYNC_SUCCESS 3
#define STATUS_ERASE_FULL 4
#define STATUS_WRITE_FLASH_EEPROM 5
#define STATUS_WRITE_FLASH_BLOCK 6
#define STATUS_CHECKSUM_OK 7
#endif

/******************************************************************************/

// 24-bit extended memory address type
typedef struct {
	uint8_t e; // extended byte
	uint16_t hl; // high & low bytes
} addr_t;

#ifdef STATUS_STRUCT
// Possible structure and meaning of status bit flag field.
// TODO: cannot use this just yet, as if statements testing bit fields in struct
// are not optimised properly by the compiler (doesn't use BTJT/BTJF instructions),
// making the code size too big! Can possibly be solved with custom peephole defs.
typedef struct {
	bool sync_uart1 : 1; // Bit #0 - Whether using normal UART communication on UART1?
	bool sync_can : 1; // Bit #1 - Whether using CAN communication - also something to do with sync?!
	bool sync_uart3 : 1; // Bit #2 - Whether using reply mode UART communication on UART3?
	bool sync_success : 1; // Bit #3 - Whether synchronisation was successful?
	bool erase_full : 1; // Bit #4 - Whether a full erase (of all sectors) is being performed
	bool write_flash_eeprom : 1; // Bit #5 - Whether area being written is flash or EEPROM (i.e. RAM write routine used)?
	bool write_flash_block : 1; // Bit #6 - Whether doing block-level flash programming
	bool checksum_ok : 1; // Bit #7 - Something to do with checksum verification?
} status_t;
#endif

extern bool flash_prg_wait(void);
extern void fill_sector_nums(const uint8_t max_sector);

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
0x84		1		placeholder for dummy 4th msb of 4-byte address received by bootloader
0x85-0x87	3		bootloader's own copy of 24-bit memory address (e, h, l)
0x88		1		data buffer length minus one (i.e. num of sectors to erase = this+1, num of bytes to write = this+1)
0x89		1		temp storage for received checksum values
0x8A		1		e }
0x8B		1		h } 24-bit memory address
0x8C		1		l }
0x8D		1		temp storage for any byte transmitted in reply by bootloader
0x8E		1		status bit flag field
0x8F		1		temp storage used for calculating checksums
0x90		1		current sector number for erase - but used by 32K v1.2 bootloader UART transmit func?!
0x93		1		UART BRR1 baud rate setting value
0x94		1		UART BRR2 baud rate setting value
0x95		1		CAN BTR1 baud rate setting value } init for 125 kBps by default, can be changed by SPEED command
0x96		1		CAN BTR2 baud rate setting value }
0x97		1		HSE (external oscillator) clock in use flag - 0x01 = yes, 0x00 = no
0x98		1		whether option byte writing needs to be enabled - 0x01 = yes, 0x00 = no
0x99		1		bootloader timeout - 0x00 = none, 0x01 = 1 second (location dependent on bootloader version, may be at 0x95)
0x9A		1		UART 'reply' mode in use - 0x01 = yes, 0x00 = no
0x9b		1		return status for erase - non-zero value indicates failure or error
0x9c		1		return status for write - non-zero value indicates failure or error
*/

// Locations are specified at link time according to compatibility with ROM
// bootloader version. See *.lk command files.
extern uint8_t data_buf[130];
extern uint8_t data_buf_max;
extern addr_t mem_addr;
#ifdef STATUS_STRUCT
extern status_t status;
#else
extern uint8_t status;
#endif
extern bool option_write;
extern bool erase_err;
extern bool write_err;

#endif // COMMON_H_
