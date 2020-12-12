;----------------------------------------------------------------------------
; In-built RAM routine patch file for 8K low-density STM8L and STM8AL devices
; See STM8 Bootloader Manual UM0560, section 3.8.1
;----------------------------------------------------------------------------
.area DATA
.area HOME

.area PATCH_SEG
.byte 0xB2
