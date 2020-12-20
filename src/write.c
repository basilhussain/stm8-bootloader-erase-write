#pragma codeseg WRITE_SEG
#pragma callee_saves write // TODO: F%$&!! This isn't implemented by SDCC for STM8!

#include <stdint.h>
#include <stdbool.h>
#include "common.h"

static void write_byte(const uint8_t data, const uint16_t idx);

/******************************************************************************/

void write(void) {
	write_err = false;
	
	watchdog_refresh();
	
#ifdef STATUS_STRUCT
	if(status.write_flash_block) {
#else
	if(status & (1 << STATUS_WRITE_FLASH_BLOCK)) {
#endif
		if(option_write) {
			// Enable writing of option bytes in addition to block writing.
			flash_block_prg_option_wr_enable();
		} else {
			// Enable just block writing.
			flash_block_prg_enable();
		}
	}
	
	option_write = false;
	
	// TODO: earliest BL versions call watchdog function here instead. Perhaps add another call?
	
	for(uint8_t idx = 0; idx <= data_buf_max; idx++) {
		write_byte(data_buf[idx], idx);
		
		// If not writing a whole block (i.e. byte programming), we must wait
		// after each byte written for programming to complete.
#ifdef STATUS_STRUCT
		if(!status.write_flash_block) {
#else
		if(!(status & (1 << STATUS_WRITE_FLASH_BLOCK))) {
#endif
			write_err = flash_prg_wait();
		}
		
		watchdog_refresh();
	}
	
	// If we wrote a whole block, wait for programming to complete.
#ifdef STATUS_STRUCT
	if(status.write_flash_block) {
#else
	if(status & (1 << STATUS_WRITE_FLASH_BLOCK)) {
#endif
		write_err = flash_prg_wait();
	}
}

void write_byte(const uint8_t data, const uint16_t idx) {
	// This function is necessary because C memory pointers are only 16-bit, not
	// the 24-bits needed to address the full range of flash on large devices
	// (with >32 KB flash). We can only work with 'extended' addressing using
	// assembly code.
	
	// Avoid compiler warnings for unreferenced args.
	(void)data;
	(void)idx;
	
	__asm
		; Load args from stack: data byte to A reg, index to X reg.
		ld a, (3+0, sp)
		ldw x, (3+1, sp)
		
		; Write the byte to memory at base address given by global variable,
		; offset by the index given by argument.
		ldf ([_mem_addr], x), a
	__endasm;
}
