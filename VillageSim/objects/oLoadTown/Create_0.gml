///@description Runs when loading into main town

global.tileSize = 64; //Size of each tile

global.mainTownWidth = global.tileSize * 100; //Width of the town room
global.mainTownHeight = global.tileSize * 100; //Height of the town room

global.rMainTown = room_add(); //Create a the town room

ini_open(working_directory + "town.ini");
var townHasBeenCreated = ini_read_real("Town", "townHasBeenCreated", 0)
ini_close();

if(townHasBeenCreated != 1) { //If the town has not been created
	
	show_debug_message("Town.ini file not found!");
	show_debug_message("Creating town.ini at: " + string(working_directory + "town.ini"));
	
	ini_open(working_directory + "town.ini");
	ini_write_real("Town", "townHasBeenCreated", true);
	ini_close();
	
	instance_create_depth(0, 0, 0, oCreateTown);
}
else {
	show_debug_message("Town.ini was found at: " + string(working_directory + "town.ini"));
	
	instance_create_depth(0, 0, 0, oRebuildTown);
}

room_set_width(global.rMainTown, global.mainTownWidth); //Set the width of the town room
room_set_height(global.rMainTown, global.mainTownHeight); //Set the height of the town room
room_set_persistent(global.rMainTown, false); //Make the town room not persistent

room_goto(global.rMainTown);