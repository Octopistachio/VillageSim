/// @description Read the tiles from the ini file

var town = global.rMainTown

for(var i = 0; i < oTownGeneration.terrainTilesHigh; i++) {
	for(var j = 0; j < oTownGeneration.terrainTilesWide; j++) {
	
		var tile_x = ds_grid_get(oTownGeneration.terrainGridBottomLeft_x, i, j)
		var tile_y = ds_grid_get(oTownGeneration.terrainGridBottomLeft_y, i, j);
	
		ini_open(working_directory + "town.ini");
		var tile_obj = ini_read_string("Terrain Tile Row " + string(i), "Terrain Tile Col " + string(j), "oGrassTile");
		ini_close();
		
		show_debug_message("Reading from Key: " + string(i) + " Section: " + string(j) + " Name: " + tile_obj);

		room_instance_add(town, tile_x, tile_y, asset_get_index(tile_obj)); //Add the tile to the room
	
	}

}