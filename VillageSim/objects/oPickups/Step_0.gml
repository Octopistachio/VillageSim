/// @description Runs if a pickup is near the player

if(instance_exists(oPlayer)) { //If the player exists

	if(distance_to_object(oPlayer) < range) { //If the player is in range of the object
		if(IsFull() == false) { //If the inventory is not full
			move_towards_point(oPlayer.x, oPlayer.y, moveSpeed); //Move towards the player
		
			if(distance_to_object(oPlayer) < closeToPlayer_range) { //If the object is close enough to the player
				AddToInventory(); //Add it to the inventory
				instance_destroy(); //Destroy the object from the room
			}
		}
		else { //If the inventory IS full
			show_debug_message("Cannot pick up " + object_get_name(self.object_index) + " because inventory is full!");	
		}
	}

}

///If the object touches water
if(place_meeting(x, y, oWaterTile)) { //If the object is touching water
	Splash(1);
	instance_destroy();	 //Destroy it
}
