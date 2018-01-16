/// @description Debug_FillInventory();
/// @function Debug_FillInventory

var inv = global.inventory_ds_list; //The player's inventory
var obj_prop = []; //The properties of the object

for(var i = 0; i < oInventory.inventorySlots; i++) { //For each inventory slot
		
	if(i mod 2 == 0)
		obj_prop[0] = "oApple";
	else
		obj_prop[0] = "oOrange";
	
	obj_prop[1] = oInventory.stack_max;
	
	ds_list_insert(inv, i, obj_prop);
	
}

show_debug_message("Filled the player's inventory");