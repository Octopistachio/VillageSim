/// @description This is run every time after oCreateTown
var town = global.rMainTown

var playerSpawn_x = global.mainTownWidth/2;
var playerSpawn_y = global.mainTownHeight/2;

instance_create_depth(0, 0, 0, oTownGeneration);
room_instance_add(town, 0, 0, oTownGeneration);
room_instance_add(town, playerSpawn_x, playerSpawn_y, oPlayer); //Spawn the player in the center

ReadTiles();

instance_destroy(); //Destroy itself once creation is done.