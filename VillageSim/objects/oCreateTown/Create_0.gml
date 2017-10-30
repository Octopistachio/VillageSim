///@description Creates the town room during loading

mainTownWidth = 1024; //Width of the town room
mainTownHeight = 1024; //Height of the town room

global.rMainTown = room_add(); //Create a the town room
room_set_width(global.rMainTown, mainTownWidth); //Set the width of the town room
room_set_height(global.rMainTown, mainTownHeight); //Set the height of the town room
room_set_persistent(global.rMainTown, false); //Make the town room not persistent

room_instance_add(global.rMainTown, 0, 0, oTownGeneration); //Create the oTownGeneration object
room_instance_add(global.rMainTown, 0, 0, oDev); //Create the oDev object for debugging
room_goto(global.rMainTown); //Go to the town room