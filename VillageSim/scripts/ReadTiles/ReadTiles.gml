/// @description Read the tiles from the ini file

var town = global.rMainTown

for(var i = 0; i < oTownGeneration.terrainTilesHigh; i++) {
	for(var j = 0; j < oTownGeneration.terrainTilesWide; j++) {
	
		var tile_x = ds_grid_get(oTownGeneration.terrainGridBottomLeft_x, i, j)
		var tile_y = ds_grid_get(oTownGeneration.terrainGridBottomLeft_y, i, j);
	
		var tile_obj;
		if(ds_map_exists(global.tiles_ds_map, string(i) + string(j)))
			tile_obj = ds_map_find_value(global.tiles_ds_map, string(i) + string(j));
		else
			tile_obj = "oGrassTile"
		
		show_debug_message("Reading from Tile Row " + string(i) + " Tile Col " + string(j) + " Name: " + tile_obj);

		room_instance_add(town, tile_x, tile_y, asset_get_index(tile_obj)); //Add the tile to the room
	
	}

}



ds_map_add_map(global.level_ds_map, "tiles", global.tiles_ds_map); //Add the tiles map to the level map