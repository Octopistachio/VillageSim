if(!global.paused) {
	var inv = global.inventory_ds_list

	var currentItem_prop = inv[| selectedHotbarSlot]; //Get the item in the slot
		if(is_array(currentItem_prop) &&
		selectedHotbarSlot <= ds_list_size(inv) && 
		selectedItem_prop != currentItem_prop) {
			show_debug_message("The item in the selected slot is " + currentItem_prop[0]);
			show_debug_message("It's type is " + currentItem_prop[2]);
		}
	return currentItem_prop;
}
	