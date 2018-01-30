if(keyboard_check(vk_backspace))
	game_end();	

if(keyboard_check_pressed(ord("G"))) {
	if(!gridEnabled) gridEnabled = true;
	else gridEnabled = false;
}

if(keyboard_check_pressed(ord("H")))
	for(var i = 0; i < oInventory.stack_max; i++)
		instance_create_depth(mouse_x, mouse_y, -1, oApple);

if(keyboard_check_pressed(ord("J")))
	instance_create_depth(mouse_x, mouse_y, -1, oOrange);
	
if(keyboard_check_pressed(ord("K")))
	instance_create_depth(mouse_x, mouse_y, -1, oPear);
	
if(keyboard_check_pressed(ord("L")))
	Debug_FillInventory();