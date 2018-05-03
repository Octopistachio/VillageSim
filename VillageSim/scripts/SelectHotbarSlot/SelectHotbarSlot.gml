
if(!global.paused) {
	var slot = selectedHotbarSlot;

	switch(keyboard_key) {
		case global.hotbarSlot1:
			slot = 1; break;
		case global.hotbarSlot2:
			slot = 2; break;
		case global.hotbarSlot3:
			slot = 3; break;
		case global.hotbarSlot4:
			slot = 4; break;
		case global.hotbarSlot5:
			slot = 5; break;
		case global.hotbarSlot6:
			slot = 6; break;
		case global.hotbarSlot7:
			slot = 7; break;
		case global.hotbarSlot8:
			slot = 8; break;
		case global.hotbarSlot9:
			slot = 9; break;
		case global.hotbarSlot10:
			slot = 10; break;
	}
	
	if(slot != selectedHotbarSlot) {
		show_debug_message("Selected hotbar slot " + string(slot));
		return slot;
	}
	else return selectedHotbarSlot;
}

