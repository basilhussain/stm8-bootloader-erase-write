#!/usr/bin/awk -f

BEGIN {
	num_overlaps = 0;
	prev_seg_name = "";
	prev_seg_addr = 0;
	prev_seg_size = 0;
}

END {
	if(num_overlaps > 0) {
		printf "%d segment overlap(s) found\n", num_overlaps;
	} else {
		# print "No segment overlaps found\n";
	}
	
	# exit num_overlaps;
}

$1 == "Area" && $2 == "Addr" && $3 == "Size" {
	if(getline && getline) {
		switch($1) {
			case "ERASE_SEG":
			case "WRITE_SEG":
			case "COMMON_SEG":
				seg_addr = strtonum("0x" $2);
				seg_size = strtonum("0x" $3);
				
				if(prev_seg_addr + prev_seg_size - 1 >= seg_addr) {
					num_overlaps++;
				
					printf "*** WARNING: Segment %s overlaps with following segment %s! ***\n", prev_seg_name, $1;
					printf "    %s ends @ %#x\n", prev_seg_name, prev_seg_addr + prev_seg_size - 1;
					printf "    %s begins @ %#x\n", $1, seg_addr;
					printf "    Overlaps by %d bytes\n", (prev_seg_addr + prev_seg_size) - seg_addr;
				}
				
				prev_seg_name = $1;
				prev_seg_addr = seg_addr;
				prev_seg_size = seg_size;
				
				break;
		}
	}

	next;
}
