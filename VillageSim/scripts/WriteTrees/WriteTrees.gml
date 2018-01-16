var trees_max = 10; //Max number of trees
var trees_current = 0; //Current number of trees
var town = global.rMainTown

for(var i = 0; i < oTownGeneration.terrainTilesHigh; i++) {
	for(var j = 0; j < oTownGeneration.terrainTilesWide; j++) {
	
		trees_current++;
		
		var tile_x = ds_grid_get(oTownGeneration.terrainGridBottomLeft_x, i, j)
		var tile_y = ds_grid_get(oTownGeneration.terrainGridBottomLeft_y, i, j);
	
		var tile_obj;
		if(ds_map_exists(global.tiles_ds_map, string(i) + string(j)))
			tile_obj = ds_map_find_value(global.tiles_ds_map, string(i) + string(j));
		else
			tile_obj = "oGrassTile"
			
		if(tile_obj == "oGrassTile" && trees_current <= trees_max)
			room_instance_add(town, tile_x, tile_y, tile_obj);
	}
			
}