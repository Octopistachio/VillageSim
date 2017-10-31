/// @description This is run every time after oCreateTown

var playerSpawn_x = global.mainTownWidth/2;
var playerSpawn_y = global.mainTownHeight/2;
room_instance_add(global.rMainTown, playerSpawn_x, playerSpawn_y, oPlayer); //Spawn the player in the center
room_instance_add(global.rMainTown, 0, 0, oTownGeneration); //Spawn the player in the center

instance_destroy(); //Destroy itself once creation is done.