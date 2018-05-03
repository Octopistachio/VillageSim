/// @description Draw the hotbar and large inventory

if(keyboard_check_pressed(vk_escape)) {
	if(global.paused) global.paused = false;
	else global.paused = true;
}

if(global.paused) {
	DrawLargeInventory();
}
else {	
	DrawHotbar();
	DrawHotbarSelector();
}

selectedHotbarSlot = SelectHotbarSlot();
selectedItem_prop = SelectedItem();



if(is_array(selectedItem_prop)) {
	show_debug_message(object_get_name(selectedItem_prop[2]))
	if(object_get_name(selectedItem_prop[2]) == "oFoodParent") {
		show_debug_message("test!")	
	}
}

