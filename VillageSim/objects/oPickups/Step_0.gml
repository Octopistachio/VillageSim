/// @description Runs if a pickup is near the player
var range = oPlayer.pickupRange;
var closeToPlayer_range = 5;

if(instance_exists(oPlayer)) {

	if(distance_to_object(oPlayer) < range) {
		move_towards_point(oPlayer.x, oPlayer.y, moveSpeed);
		
		if(distance_to_object(oPlayer) < closeToPlayer_range) {
			instance_destroy();
		}
		
	}

}
