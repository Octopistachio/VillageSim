//Returns the inventory slot that the user has clicked on

if(mouse_check_button_pressed(mb_left)) {
	var obj = []

	if(global.paused) { //This means the large inventory is open
	
	}
	else { //This means the hotbar is open
		var x1 = hotBarBorder_x;
		var y1 = display_get_gui_height() - hotBar_height - hotBarBorder_y;
		var x2 = display_get_gui_width() - hotBarBorder_x;
		var y2 = display_get_gui_height() - hotBarBorder_y;

		if point_in_rectangle(window_mouse_get_x(),window_mouse_get_y(),x1,y1,x2,y2) { //If the mouse is inside the hotbar
		
			for(var i = 0; i <= oInventory.hotBarSlots; i++) {
				if point_in_rectangle(window_mouse_get_x(),window_mouse_get_y(),x1,y1,x1+(64*(i+1)),y2) {
						obj = ds_list_find_value(global.inventory_ds_list, i);
					
						if(is_array(obj)) {
							show_debug_message("The user selected the item in hotbar slot number " + string(i + 1));
							return i;
						}					
					}
				}
			}
		
	}
}