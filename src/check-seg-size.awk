#!/usr/bin/awk -f

BEGIN {
	num_overlaps = 0;
	num_reserved = 0;
	prev_seg_name = "";
	prev_seg_addr = 0;
	prev_seg_size = 0;
	
	reserved[0x200, 0x2FF] = "RESERVED";
	reserved[0x3C0, 0x17FF] = "STACK";
	reserved[0x4000, 0x47FF] = "EEPROM";
	reserved[0x8000, 0x27FFF] = "FLASH";
}

END {
	if(num_overlaps > 0) {
		printf "%d segment overlap(s) found\n", num_overlaps;
	} else {
		# print "No segment overlaps found\n";
	}
	
	if(num_reserved > 0) {
		printf "%d reserved range violation(s) found\n", num_reserved;
	} else {
		# print "No reserved range violations found\n";
	}
}

$1 == "Area" && $2 == "Addr" && $3 == "Size" {
	if(getline && getline) {
		if($1 != ".") {
			seg_name = $1;
			seg_addr = strtonum("0x" $2);
			seg_size = strtonum("0x" $3);
			
			for(r in reserved) {
				split(r, range, SUBSEP);
				
				if(asort(range) == 2) {
					if((seg_addr >= range[1] && seg_addr <= range[2]) || (seg_addr + seg_size - 1 >= range[1] && seg_addr + seg_size - 1 <= range[2])) {
						num_reserved++;
					
						printf "*** WARNING: Segment %s violates reserved range %s! ***\n", seg_name, reserved[r];
						printf "    %s begins @ %#x, ends @ %#x\n", reserved[r], range[1], range[2];
						printf "    %s begins @ %#x, ends @ %#x\n", seg_name, seg_addr, seg_addr + seg_size - 1;
					}
				}
			}
			
			switch($1) {
				case "ERASE_SEG":
				case "WRITE_SEG":
				case "COMMON_SEG":
					if(prev_seg_addr + prev_seg_size - 1 >= seg_addr) {
						num_overlaps++;
					
						printf "*** WARNING: Segment %s overlaps with following segment %s! ***\n", prev_seg_name, seg_name;
						printf "    %s ends @ %#x\n", prev_seg_name, prev_seg_addr + prev_seg_size - 1;
						printf "    %s begins @ %#x\n", seg_name, seg_addr;
						printf "    Overlaps by %d bytes\n", (prev_seg_addr + prev_seg_size) - seg_addr;
					}
					
					break;
			}
			
			prev_seg_name = seg_name;
			prev_seg_addr = seg_addr;
			prev_seg_size = seg_size;
		}
	}

	next;
}
