/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

levelNotFound = false;

if(!file_exists(working_directory + "level.dat")) { //If the town has not been created
	levelNotFound = true;
	show_debug_message("level.dat file not found!");
}
