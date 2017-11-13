if(keyboard_check(vk_backspace))
	game_end();	


if(keyboard_check_pressed(ord("G"))) {
	if(!gridEnabled) gridEnabled = true;
	else gridEnabled = false;
}


if(keyboard_check(ord("H")))
	instance_create_depth(mouse_x, mouse_y, -1, oApple);

if(keyboard_check_pressed(ord("J")))
	instance_create_depth(mouse_x, mouse_y, -1, oOrange);
	
if(keyboard_check_pressed(ord("K")))
	Debug_FillInventory();


if(gridEnabled)	{
	draw_set_alpha(.5);
	draw_set_color(c_white);
		
	for(var i = 0; i < room_width; i += oTownGeneration.terrainTileSize)
		draw_line(i, 0, i, room_height);
	for(var i = 0; i < room_height; i += oTownGeneration.terrainTileSize)
		draw_line(0, i, room_width, i);
		
}

