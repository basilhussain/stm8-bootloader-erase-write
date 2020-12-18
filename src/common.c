#pragma codeseg COMMON_SEG

// The bootloader's watchdog refresh function has no side effects on A/X/Y
// registers - it does nothing except MOV some values to the watchdog registers
// - so it is better to call it this way and save some pushes/pops.
#pragma callee_saves watchdog_refresh // TODO: F%$&!! This isn't implemented by SDCC for STM8!

#include <stdint.h>
#include <stdbool.h>
#include "common.h"

/******************************************************************************/

void flash_erase_enable(void) {
	// Enable flash block erasure.
	FLASH_CR2  = (1 << FLASH_CR2_ERASE);
	FLASH_NCR2 = ~(1 << FLASH_NCR2_NERASE);
}

void flash_block_prg_enable(void) {
	// Enable flash block writing.
	FLASH_CR2  = (1 << FLASH_CR2_PRG);
	FLASH_NCR2 = ~(1 << FLASH_NCR2_NPRG);
}

void flash_block_prg_option_wr_enable(void) {
	// Enable writing of option bytes in addition to block writing.
	FLASH_CR2  = ((1 << FLASH_CR2_PRG) | (1 << FLASH_CR2_OPT));
	FLASH_NCR2 = ~((1 << FLASH_NCR2_NPRG) | (1 << FLASH_NCR2_NOPT));
}

bool flash_prg_wait(void) {
	uint8_t iapsr;

	// TODO: earliest versions (128K v2.0 and 32K v1.0) of RAM routines do not
	// check WR_PG_DIS, and consequently do not have a 'return' value. Is it
	// safe to still set those global vars?

	// Wait for end-of-programming to occur.
	do {
		// Read the entire register at once. We do this because reading the
		// register clears the WR_PG_DIS and EOP bits, so we need to perform
		// value tests on a copy. See PM0051, section 4.2 "Block programming".
		iapsr = FLASH_IAPSR;
		
		// Check if attempted to write/erase a protected area. If so, exit
		// indicating failure.
		if(iapsr & (1 << FLASH_IAPSR_WR_PG_DIS)) {
			return true;
		}
	} while(!(iapsr & (1 << FLASH_IAPSR_EOP)));

	return false;
}

uint16_t flash_sector_addr_hl(const uint8_t sector) {
	// Given a sector number, calculate the high and low byte of the address
	// in flash it corresponds to. One sector is eight 128 byte blocks
	// (equalling 1024 bytes).
	return ((128 * sector) * 8) + 0x8000;
}

void fill_sector_nums(const uint8_t max_sector) {
	// Fill the global buffer with sector numbers, up to the maximum value
	// given as argument.
	for(uint8_t i = 0; i <= max_sector; i++) {
		watchdog_refresh();
		global_0x00[i] = i;
	}

	// Set the global buffer limit (i.e. index of last element) to the given
	// maximum sector number.
	global_0x88 = max_sector;
}
