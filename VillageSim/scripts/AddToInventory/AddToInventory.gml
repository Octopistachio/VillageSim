/// @description AddToInventory(obj);
/// @function AddToInventory
/// @param obj

var obj; //The object being added to the inventory

if(argument_count <= 0) obj = self.object_index; //If a parameter is not input, set it to itself
else obj = argument[0].object_index; //Else set the parameter to what was input

var slots_total = oInventory.inventorySlots;
var stack_max = oInventory.stack_max;

var obj_name = object_get_name(obj); //The name of the object as a string
var inv = global.inventory_ds_list; //The player's inventory
var obj_prop = []; //The properties of the object
var foundMatch = false; //True, if this object is currently in the inventory

var obj_amount = 1; //Number of this object in the player's inventory (for debugging)

for(var i = 0; i < ds_list_size(inv); i++) { //For each inventory slot
	
	var current_obj_prop = inv[| i]; //Get the item in the current index
	var current_obj_name = current_obj_prop[0]; //Get the item's name
	var current_obj_amount = current_obj_prop[1]; //Get the item's name
	
	if(current_obj_name == obj_name && current_obj_amount < stack_max) { //If a match is found
		{
			current_obj_prop[1]++; //Increase the number of objects by one
			ds_list_replace(inv, i, current_obj_prop); //Replace the object's properties with the new properties
			obj_amount = current_obj_prop[1]; //Set the number of objects in the player's inventory to the new value (for debeugging)
		
			foundMatch = true; //True, because this object is already in the player's inventory
		}
	}	
}

if(!foundMatch) { //If the object is NOT in the player's inventory
	
	obj_prop[0] = obj_name; //Set the item's first property to it's name
	obj_prop[1] = 1; //Set the item's second property to 1
	obj_prop[2] = string(object_get_name(object_get_parent(object_get_parent(asset_get_index(obj_name))))); //Set the item's third property to its item type
	ds_list_add(inv, obj_prop); //Add it to the player's inventory
	
}

show_debug_message("The player now has " + string(obj_amount) + " " + obj_name + "(s)") ;