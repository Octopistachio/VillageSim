
/*Hotbar Variables*/
var slot = selectedHotbarSlot;

var inv = global.inventory_ds_list;

var win_height = display_get_gui_height(); //The height of the window
var win_width = display_get_gui_width(); //The width of the window

var slots_wide = oInventory.hotBarSlots; //Width of the hotbar grid

var hotBar_height = sprite_get_height(sHotbar); //The height of the hotbar
var hotBar_width = sprite_get_width(sHotbar); //The width of the hotbar

var hotBar_x = win_width / 2; //The x coord of the hotbar
var hotBar_y = win_height - hotBar_height - hotBar_height / 8; //The y coord of the hotbar

var hotBar_xborder = (win_width - hotBar_width) / 2 //The border between the hotbar and the edge
var slot_size = hotBar_height; //The size of each inventory slot
var img_border = 11; //The border between each slot

var size_multiplier = 6; //The value the item's sprite should be increased by

/*Draw Hotbar*/

draw_sprite(sHotbar, slot, hotBar_x, hotBar_y);

/*Draw Hotbar Items*/
var items_to_draw = 0;
if(ds_list_size(inv) > slots_wide) items_to_draw = slots_wide;
else items_to_draw = ds_list_size(inv);
	

var last_x = hotBar_xborder + (slot_size) - (slot_size/2) //The x value of the last sprite drawn

if(!ds_list_empty(inv)) { //If the list isn't empty
	for(var i = 0; i < items_to_draw; i++) { //For each item in the hotbar

		var current_obj_prop = inv[| i]; //Get the item in the current index
		var current_obj_name = current_obj_prop[0]; //Get the item's name
		var current_obj_amount = current_obj_prop[1] //Get the item's amount
		var current_obj_index = asset_get_index(current_obj_name); //Get the item's index
		var current_obj_sprite = object_get_sprite(current_obj_index); //Get the item's sprite
			
		if(!sprite_exists(current_obj_sprite)) current_obj_sprite = sDebug_NotFound;

		var sprite_x; //The sprite's x value
		if(i != 0) sprite_x = last_x + slot_size - img_border; //If it is not the first item, draw the sprite to the right
		else sprite_x = last_x; //If it is the first item, draw the sprite where it is
		var sprite_y = hotBar_y; //Set the y value to the same as the hotbar's
		
		draw_sprite_ext(current_obj_sprite, 0, sprite_x, sprite_y, size_multiplier, size_multiplier, 0, c_white, 1);
		if(current_obj_amount > 1) { //If there is more than one item
			draw_set_colour(c_white);
			draw_set_alpha(1);
			draw_text(sprite_x, sprite_y, string(current_obj_amount)); //Write the amount
		}	
		
		last_x = sprite_x; //Change the last x value to the current x value

	}
}

