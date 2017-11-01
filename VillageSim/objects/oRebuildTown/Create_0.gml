/// @description This is run every time after oCreateTown
var town = global.rMainTown

var playerSpawn_x = global.mainTownWidth/2;
var playerSpawn_y = global.mainTownHeight/2;

instance_create_depth(0, 0, 0, oTownGeneration);
room_instance_add(global.rMainTown, 0, 0, oTownGeneration);
room_instance_add(global.rMainTown, playerSpawn_x, playerSpawn_y, oPlayer); //Spawn the player in the center

for(var i = 0; i < oTownGeneration.terrainTilesHigh; i++) {
	for(var j = 0; j < oTownGeneration.terrainTilesWide; j++) {
	
		var tile_x = ds_grid_get(oTownGeneration.terrainGridBottomLeft_x, i, j)
		var tile_y = ds_grid_get(oTownGeneration.terrainGridBottomLeft_y, i, j);
	
		ini_open(working_directory + "town.ini");
		var tile_obj = ini_read_string("Terrain Tile Row " + string(i), "Terrain Tile Col " + string(j), "oGrassTile");
		ini_close();
		
		show_debug_message("Key: " + string(i) + " Section: " + string(j) + " Name: " + tile_obj);

		room_instance_add(town, tile_x, tile_y, asset_get_index(tile_obj));
	
	}

}

instance_destroy(); //Destroy itself once creation is done.