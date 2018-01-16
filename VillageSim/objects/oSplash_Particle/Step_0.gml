if(y > max_height && !reachedApex) {
	vspeed = -vspd;
}
else if(y <= max_height) {
	reachedApex = true;	
	vspeed = vspd;
}

if(y >= min_height && reachedApex) {
	instance_destroy();	
}

