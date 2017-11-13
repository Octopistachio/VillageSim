if(global.paused) {
	hspeed = 0;
	vspeed = 0;
	exit;
}

///Movement code

//Check if outside the room
if(x <= 0 + oPlayer.sprite_width/2) {
    x += moveSpeed;
	vspeed = 0; //Prevents sliding
}
else if(x >= room_width - oPlayer.sprite_width/2) {
    x -= moveSpeed;
	vspeed = 0; //Prevents sliding
}
if(y <= 0 + oPlayer.sprite_height/2) {
    y += moveSpeed;
	hspeed = 0; //Prevents sliding
}
else if(y >= room_height - oPlayer.sprite_height/2) {
    y -= moveSpeed;
	hspeed = 0; //Prevents sliding
}

CurrentPlayerTile();
PlayerMovement();