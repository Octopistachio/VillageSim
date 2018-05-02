//Horizontal Terrain Collision
if(place_meeting(x + hspeed, y, oCollisionableTileParent)) {
	while(!place_meeting(x + sign(hspeed), y, oCollisionableTileParent)) {
		x += sign(hspeed)	
	}
	hspeed = 0;
}

//Vertical Terrain Collision
if(place_meeting(x, y + vspeed, oCollisionableTileParent)) {
	while(!place_meeting(x, y + sign(vspeed), oCollisionableTileParent)) {
		y += sign(vspeed)	
	}
	vspeed = 0;
}

//Horizontal Natural Element Collision
if(place_meeting(x + hspeed, y, oCollisionableNaturalElementParent)) {
	while(!place_meeting(x + sign(hspeed), y, oCollisionableNaturalElementParent)) {
		x += sign(hspeed)	
	}
	hspeed = 0;
}

//Vertical Natural Element Collision
if(place_meeting(x, y + vspeed, oCollisionableNaturalElementParent)) {
	while(!place_meeting(x, y + sign(vspeed), oCollisionableNaturalElementParent)) {
		y += sign(vspeed)	
	}
	vspeed = 0;
}