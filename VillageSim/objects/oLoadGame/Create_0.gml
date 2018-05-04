/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

show_debug_message("Load game selected!");
show_debug_message("level.dat was found at: " + string(working_directory + "level.dat"));
LoadMaps();

instance_create_depth(0, 0, 0, oRebuildTown);
room_goto(global.rMainTown);