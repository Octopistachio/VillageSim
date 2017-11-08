var movingUp = false;
var movingDown = false;
var movingLeft = false;
var movingRight = false;

//Up
if(keyboard_check(upControl)) movingUp = true;

//Down
if(keyboard_check(downControl))	movingDown = true;

//Left
if(keyboard_check(leftControl))	movingLeft = true;

//Right
if(keyboard_check(rightControl)) movingRight = true;



//Up
if(movingUp) {
	if(keyboard_check_released(rightControl) || keyboard_check_released(leftControl)) 
			hspeed = 0;
		
		sprite_index = sPlayerWalkUp;
		vspeed = -moveSpeed;
	
		if(image_xscale < 0)
			image_xscale *= -1;
}

//Down
if(movingDown) {
	if(keyboard_check_released(rightControl) || keyboard_check_released(leftControl)) 
		hspeed = 0;

	sprite_index = sPlayerWalkDown;
	vspeed = moveSpeed;
	
	if(image_xscale < 0)
		image_xscale *= -1;
}

//Left
if(movingLeft) {
	if(keyboard_check_released(upControl) || keyboard_check_released(downControl)) 
		vspeed = 0;

	if(image_xscale > 0)
		image_xscale *= -1;

	sprite_index = sPlayerWalkSide;
	hspeed = -moveSpeed;
}

//Right
if(movingRight) {
	if(keyboard_check_released(upControl) || keyboard_check_released(downControl)) 
		vspeed = 0;

	if(image_xscale < 0)
		image_xscale *= -1;

	sprite_index = sPlayerWalkSide;
	hspeed = moveSpeed;
}

//Horizontal Collision
if(place_meeting(x + hspeed, y, oWaterTile)) {
	while(!place_meeting(x + sign(hspeed), y, oWaterTile)) {
		x += sign(hspeed)	
	}
	hspeed = 0;
}

//Vertical Collision
if(place_meeting(x, y + vspeed, oWaterTile)) {
	while(!place_meeting(x, y + sign(vspeed), oWaterTile)) {
		y += sign(vspeed)	
	}
	vspeed = 0;
}

//Stopped
if(!keyboard_check(upControl) && !keyboard_check(downControl) && 
!keyboard_check(leftControl) && !keyboard_check(rightControl)) {

	vspeed = 0;
	hspeed = 0;

}
