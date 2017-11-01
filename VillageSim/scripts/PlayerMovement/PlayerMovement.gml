//Up
if(keyboard_check(upControl)) {
	
	if(keyboard_check_released(rightControl) || keyboard_check_released(leftControl)) 
		hspeed = 0;
		
	sprite_index = sPlayerWalkUp;
	vspeed = -moveSpeed;
	
	if(image_xscale < 0)
		image_xscale *= -1;
}

//Down
if(keyboard_check(downControl)) {

	if(keyboard_check_released(rightControl) || keyboard_check_released(leftControl)) 
		hspeed = 0;

	sprite_index = sPlayerWalkDown;
	vspeed = moveSpeed;
	
	if(image_xscale < 0)
		image_xscale *= -1;

}

//Left
if(keyboard_check(leftControl)) {

	if(keyboard_check_released(upControl) || keyboard_check_released(downControl)) 
		vspeed = 0;

	if(image_xscale > 0)
		image_xscale *= -1;

	sprite_index = sPlayerWalkSide;
	hspeed = -moveSpeed;

}

//Right
if(keyboard_check(rightControl)) {

	if(keyboard_check_released(upControl) || keyboard_check_released(downControl)) 
		vspeed = 0;

	if(image_xscale < 0)
		image_xscale *= -1;

	sprite_index = sPlayerWalkSide;
	hspeed = moveSpeed;

}

