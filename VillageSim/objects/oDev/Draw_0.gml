if(gridEnabled)	{
	draw_set_alpha(.5);
	draw_set_color(c_white);
		
	for(var i = 0; i < room_width; i += oTownGeneration.terrainTileSize)
		draw_line(i, 0, i, room_height);
	for(var i = 0; i < room_height; i += oTownGeneration.terrainTileSize)
		draw_line(0, i, room_width, i);
		
}

