/// @description Draw the inventory
var win_height = window_get_height(); //The height of the window
var win_width = window_get_width(); //The width of the window

var hotBar_height = 128; //The height of the hotbar
var hotBar_width = 640; //The width of the hotbar
var hotBarBorder_x = (win_width - hotBar_width) / 2; //The border between the left and right side of the window and the hotbar
var hotBarBorder_y = 64 //The border between the bottom of the window and the hotbar

draw_set_color(c_red); //The color of the hotbar
draw_set_alpha(1); //The alpha of the hotbar
draw_rectangle(hotBarBorder_x, win_height - hotBar_height - hotBarBorder_y,  win_width - hotBarBorder_x, win_height - hotBarBorder_y, false);

if(!ds_list_empty(global.inventory_ds_list)) { //If the list isn't empty
	for(var i = 0; i < hotBarSlots; i++) { //For each item in the hotbar

		if(i < ds_list_size(global.inventory_ds_list)) { //If i is less than or equal to the number of items in the list
			var current_obj_prop = global.inventory_ds_list[| i]; //Get the item in the current index
			var current_obj_name = current_obj_prop[0]; //Get the item's name
			var current_obj_index = asset_get_index(current_obj_name); //Get the item's index
			var current_obj_sprite = object_get_sprite(current_obj_index); //Get the item's sprite

			if(sprite_exists(current_obj_sprite)) //If the sprite exists
				draw_sprite(current_obj_sprite, 0, i * 64, 100); //Draw it on the screen
		}
	}
}
