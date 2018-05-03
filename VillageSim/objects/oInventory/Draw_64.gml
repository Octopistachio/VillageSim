/// @description Draw the hotbar and large inventory

if(keyboard_check_pressed(vk_escape)) {
	if(global.paused) global.paused = false;
	else global.paused = true;
}

var inst = noone;

if(global.paused) {
	DrawLargeInventory();
	
	inst = instance_create_depth(1000, 1000, -999, oApple)
	
	//SelectLargeInventorySlot();
}
else {	
	if(instance_exists(inst)) {
		with(inst) {
			instance_destroy();	
		}
	}
	DrawHotbar();
	DrawHotbarSelector();
	
	selectedHotbarSlot = SelectHotbarSlot();
	selectedItem_prop = SelectedItem();

	if(is_array(selectedItem_prop)) {
		
		switch(asset_get_index(selectedItem_prop[2])) {
		
			case oFoodParent:
				break;
			case oToolParent:
				break;
		
		}
	}
}
