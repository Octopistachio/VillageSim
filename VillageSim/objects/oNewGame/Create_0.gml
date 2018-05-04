// Inherit the parent event
event_inherited();

show_debug_message("New game selected!");
show_debug_message("Creating level.dat at: " + string(working_directory + "level.dat"));
	
instance_create_depth(0, 0, 0, oCreateTown);
	
SaveMaps();

room_goto(global.rMainTown);
