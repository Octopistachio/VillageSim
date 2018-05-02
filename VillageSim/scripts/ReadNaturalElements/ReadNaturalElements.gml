/// @description Read the tiles from the ini file

var town = global.rMainTown

for(var i = 0; i < oTownGeneration.terrainTilesHigh; i++) {
	for(var j = 0; j < oTownGeneration.terrainTilesWide; j++) {
	
		var tile_x = ds_grid_get(oTownGeneration.terrainGridBottomLeft_x, i, j)
		var tile_y = ds_grid_get(oTownGeneration.terrainGridBottomLeft_y, i, j);
	
		var tile_obj;
		if(ds_map_exists(global.natural_elements_ds_map, string(i) + string(j))) {
			tile_obj = ds_map_find_value(global.natural_elements_ds_map, string(i) + string(j));
			room_instance_add(town, tile_x, tile_y, asset_get_index(tile_obj)); //Add the tile to the room
			show_debug_message("Reading from Natural Elements Row " + string(i) + " Natural Elements Col " + string(j) + " Name: " + tile_obj);
		}
		
		
	
	}

}

ds_map_add_map(global.level_ds_map, "natural elements", global.natural_elements_ds_map); //Add the tiles map to the level map