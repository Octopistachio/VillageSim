/// @description Returns true if there is a space availabke

var obj = self.object_index; //Create a local variable for the current object
var stack_max = oInventory.stack_max; //Create a local variable for the max number of slots
var obj_name = object_get_name(obj); //The name of the object as a string
var inv = global.inventory_ds_list; //The player's inventory

if(oInventory.inventorySlots == ds_list_size(global.inventory_ds_list)) { //If the inventory is full

	for(var i = 0; i < ds_list_size(inv); i++) { //Check each inventory slot
	
		var current_obj_prop = inv[| i]; //Get the item in the current index
		var current_obj_name = current_obj_prop[0]; //Get the item's name
		var current_obj_amount = current_obj_prop[1]; //Get the item's name
	
		if(current_obj_name == obj_name && current_obj_amount < stack_max) //If the object name matches, and the current amount is less than the max
			return true; //Return true
	}
	return false; //If no match is found, then return false
}
return true; //If the inventory is not full, return true
