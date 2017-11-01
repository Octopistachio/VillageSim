///@description This is run the first time the game is played

var town = global.rMainTown

var playerSpawn_x = global.mainTownWidth/2;
var playerSpawn_y = global.mainTownHeight/2;
instance_create_depth(0, 0, 0, oTownGeneration);
room_instance_add(town, 0, 0, oTownGeneration);
room_instance_add(town, playerSpawn_x, playerSpawn_y, oPlayer); //Spawn the player in the center

////Terrain Generation
var tilesHigh = oTownGeneration.terrainTilesHigh;
var tilesWide = oTownGeneration.terrainTilesWide;

for(var i = 0; i < oTownGeneration.terrainTilesHigh; i++) { //For each column in the room
	for(var j = 0; j < oTownGeneration.terrainTilesWide; j++) { //For each row in the room
	
		
		var tile_x = ds_grid_get(oTownGeneration.terrainGridBottomLeft_x, i, j); //Get the current tile's x
		var tile_y = ds_grid_get(oTownGeneration.terrainGridBottomLeft_y, i, j); //Get the current tile's y
			
		var tile_obj = pointer_null; //The tile that was picked
		
		if(ChooseWater(i, j, tilesHigh, tilesWide)) tile_obj = oWaterTile;

		if(tile_obj != pointer_null) {
			ini_open(working_directory + "town.ini");
			ini_write_string("Terrain Tile Row " + string(i), "Terrain Tile Col " + string(j), object_get_name(tile_obj));
			ini_close();
			
			show_debug_message("Writng to Key: Terrain Tile Row " + string(i) + " Section: Terrain Tile Col " + string(j) + " Name: " +  object_get_name(tile_obj));
		}
		
		
	
	}

}

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


instance_destroy(); //Destroy itself once creation is done.