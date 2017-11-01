/// @description Randomize the tiles and write them to an ini file

var town = global.rMainTown

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