///Movement code

//Up
if(keyboard_check(upControl)) {
	
	sprite_index = sPlayerWalkUp;
	vspeed = -playerSpeed;
		
}

//Down
else if(keyboard_check(downControl)) {

	sprite_index = sPlayerWalkDown;
	vspeed = playerSpeed;

}

//Left
if(keyboard_check(leftControl)) {

	sprite_index = sPlayerWalkSide;
	image_xscale *= -1;
	hspeed = -playerSpeed;

}

//Right
else if(keyboard_check(rightControl)) {

	sprite_index = sPlayerWalkSide;
	hspeed = playerSpeed;

}

//Stopped
if(!keyboard_check(upControl) && !keyboard_check(downControl) && 
!keyboard_check(leftControl) && !keyboard_check(rightControl)) {


	sprite_index = sPlayerIdle;
	vspeed = 0;
	hspeed = 0;

}

