///@description Runs when loading into main town or when booting the game

instance_create_depth(room_width, room_height, 0, oLoadingAnimation);
global.paused = false; //Whether or not the game is paused
window_set_cursor(cr_none);
cursor_sprite = sArrowCursor;

///DS Maps/Lists
global.level_ds_map = ds_map_create(); //Holds all other maps
global.tiles_ds_map = ds_map_create(); //The map of each tile
global.natural_elements_ds_map = ds_map_create(); //The map of each tree, rock, flower, etc.
global.inventory_ds_list = ds_list_create(); //All the items in the player's inventory

global.tileSize = 64; //Size of each tile

var roomTiles= 24; //Numbers of tiles wide/high the room is
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
room_instance_add(global.rMainTown, 0, 0, oClock)

file_delete(working_directory + "level.dat") //DEBUGGING

if(!file_exists(working_directory + "level.dat")) { //If the town has not been created
	
	show_debug_message("level.dat file not found!");
	show_debug_message("Creating level.dat at: " + string(working_directory + "level.dat"));
	
	instance_create_depth(0, 0, 0, oCreateTown);
	
	SaveMaps();
}
else {
	show_debug_message("level.dat was found at: " + string(working_directory + "level.dat"));
	
	LoadMaps();

	instance_create_depth(0, 0, 0, oRebuildTown);
}

room_goto(global.rMainTown);