/// @description Draw the hotbar and large inventory

if(keyboard_check_pressed(vk_escape)) {
	if(global.paused) global.paused = false;
	else global.paused = true;
}

if(global.paused) DrawLargeInventory();
else DrawHotbar();

var selectedSlot = SelectSlot();