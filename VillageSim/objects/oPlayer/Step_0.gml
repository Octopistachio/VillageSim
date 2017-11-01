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
PlayerMovement();



//Stopped
if(!keyboard_check(upControl) && !keyboard_check(downControl) && 
!keyboard_check(leftControl) && !keyboard_check(rightControl)) {

	vspeed = 0;
	hspeed = 0;

}

