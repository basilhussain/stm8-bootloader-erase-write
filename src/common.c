#pragma codeseg COMMON_SEG

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
	FLASH_CR2  = (1 << FLASH_CR2_PRG) | (1 << FLASH_CR2_OPT);
	FLASH_NCR2 = ~(1 << FLASH_NCR2_NPRG) | (1 << FLASH_NCR2_NOPT);
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
