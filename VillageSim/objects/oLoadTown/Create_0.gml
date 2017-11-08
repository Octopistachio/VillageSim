///@description Runs when loading into main town

///DS_Maps
global.level_ds_map = ds_map_create(); //Holds all other maps
global.tiles_ds_map = ds_map_create(); //The map of each tile

global.tileSize = 64; //Size of each tile

var roomTiles= 25; //Numbers of tiles wide/high the room is
global.mainTownWidth = global.tileSize * roomTiles; //Width of the town room
global.mainTownHeight = global.tileSize * roomTiles; //Height of the town room

global.rMainTown = room_add(); //Create a the town room

instance_create_depth(0, 0, 0, oTownGeneration);

room_set_width(global.rMainTown, global.mainTownWidth); //Set the width of the town room
room_set_height(global.rMainTown, global.mainTownHeight); //Set the height of the town room
room_set_persistent(global.rMainTown, false); //Make the town room not persistent

room_instance_add(global.rMainTown, 0, 0, oInventory)
room_instance_add(global.rMainTown, 0, 0, oDev)
room_instance_add(global.rMainTown, 0, 0, oCamera)

if(!file_exists(working_directory + "level.dat")) { //If the town has not been created
	
	show_debug_message("level.dat file not found!");
	show_debug_message("Creating level.dat at: " + string(working_directory + "level.dat"));
	
	instance_create_depth(0, 0, 0, oCreateTown);
	
	ds_map_secure_save(global.level_ds_map, working_directory + "level.dat");
	ds_map_add_map(global.level_ds_map, "tiles", global.tiles_ds_map); //Add the tiles map to the level map
}
else {
	show_debug_message("level.dat was found at: " + string(working_directory + "level.dat"));
	
	global.level_ds_map = ds_map_secure_load(working_directory + "level.dat");
	global.tiles_ds_map = ds_map_find_value(global.level_ds_map, "tiles");
	
	instance_create_depth(0, 0, 0, oRebuildTown);
}



room_goto(global.rMainTown);