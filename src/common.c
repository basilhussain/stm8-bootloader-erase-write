#pragma codeseg COMMON_SEG

// The bootloader's watchdog refresh function has no side effects on A/X/Y
// registers - it does nothing except MOV some values to the watchdog registers
// - so it is better to call it this way and save some pushes/pops.
#pragma callee_saves watchdog_refresh // TODO: F%$&!! This isn't implemented by SDCC for STM8!

#include <stdint.h>
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

void flash_prg_wait(uint8_t *prot_flag) {
	// TODO: earliest versions (128K v2.0 and 32K v1.0) of RAM routines do not
	// check WR_PG_DIS, and consequently do not have a 'return' value.

	if(FLASH_IAPSR & (1 << FLASH_IAPSR_WR_PG_DIS)) {
		// Failed, attempted to erase a protected area; set a flag?
		*prot_flag |= (1 << 0);
	} else {
		// Wait for end-of-programming to occur.
		while(!(FLASH_IAPSR & (1 << FLASH_IAPSR_EOP)));
	}
}

uint16_t flash_sector_addr_hl(const uint8_t sector) {
	// Given a sector number, calculate the address in flash it corresponds to.
	// One sector is eight 128 byte blocks (equalling 1024 bytes).
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
