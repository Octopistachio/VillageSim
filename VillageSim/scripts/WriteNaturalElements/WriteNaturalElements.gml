/// @description Randomize the tiles and write them to an ini file

var town = global.rMainTown

var tilesHigh = oTownGeneration.terrainTilesHigh;
var tilesWide = oTownGeneration.terrainTilesWide;

//Create the second layer, the natural elements
for(var i = 0; i < tilesHigh; i++) { //For each column in the room
	for(var j = 0; j < tilesWide; j++) { //For each row in the room
		
		var tile_obj;
		if(ds_map_exists(global.tiles_ds_map, string(i) + string(j)))
			tile_obj = ds_map_find_value(global.tiles_ds_map, string(i) + string(j));
		else
			tile_obj = "oGrassTile"
		
		
		var element_obj = ChooseNaturalElement();
		

		if(element_obj != pointer_null && tile_obj == "oGrassTile") {
			
			ds_map_add(global.natural_elements_ds_map,string(i) + string(j), object_get_name(element_obj));
			
			show_debug_message("Writing to Natural Elements Row " + string(i) + " Natural Elements Col " + string(j) + " Name: " +  object_get_name(element_obj));
		}
	}
}