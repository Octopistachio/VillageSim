///Movement code

//Check if outside the room
if(x <= 0) {
    x += moveSpeed;
	vspeed = 0; //Prevents sliding
}
else if(x >= room_width) {
    x -= moveSpeed;
	vspeed = 0; //Prevents sliding
}
if(y <= 0) {
    y += moveSpeed;
	hspeed = 0; //Prevents sliding
}
else if(y >= room_height) {
    y -= moveSpeed;
	hspeed = 0; //Prevents sliding
}

CurrentPlayerTile();

//Up
if(keyboard_check(upControl)) {
	
	sprite_index = sPlayerWalkUp;
	vspeed = -moveSpeed;
	
	if(image_xscale < 0)
		image_xscale *= -1;
}

//Down
if(keyboard_check(downControl)) {

	sprite_index = sPlayerWalkDown;
	vspeed = moveSpeed;
	
	if(image_xscale < 0)
		image_xscale *= -1;

}

//Left
if(keyboard_check(leftControl)) {

	if(image_xscale > 0)
		image_xscale *= -1;

	sprite_index = sPlayerWalkSide;
	hspeed = -moveSpeed;

}

//Right
if(keyboard_check(rightControl)) {

	if(image_xscale < 0)
		image_xscale *= -1;

	sprite_index = sPlayerWalkSide;
	hspeed = moveSpeed;

}

//Stopped
if(!keyboard_check(upControl) && !keyboard_check(downControl) && 
!keyboard_check(leftControl) && !keyboard_check(rightControl)) {

	vspeed = 0;
	hspeed = 0;

}

