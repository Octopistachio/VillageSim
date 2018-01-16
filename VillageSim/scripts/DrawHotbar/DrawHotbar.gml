/*Hotbar Variables*/
var inv = global.inventory_ds_list;

var win_height = display_get_gui_height(); //The height of the window
var win_width = display_get_gui_width(); //The width of the window

var slots_wide = oInventory.hotBarSlots; //Width of the hotbar grid

hotBar_height = 64; //The height of the hotbar
hotBar_width = 64*slots_wide + (slots_wide-1); //The width of the hotbar

hotBarBorder_x = (win_width - hotBar_width) / 2; //The border between the left and right side of the window and the hotbar
hotBarBorder_y = 64 //The border between the bottom of the window and the hotbar

draw_set_color(c_red); //The color of the hotbar
draw_set_alpha(1); //The alpha of the hotbar
draw_rectangle(hotBarBorder_x, win_height - hotBar_height - hotBarBorder_y,  win_width - hotBarBorder_x, win_height - hotBarBorder_y, false);

/*Draw Hotbar*/
for(var i = 1; i < slots_wide; i++) { //For each item in the hotbar
		var line_x = hotBarBorder_x + (hotBar_width/slots_wide) * i;
		var line_y = win_height - hotBarBorder_y;
		draw_set_color(c_black);
		draw_line(line_x, line_y, line_x, line_y - hotBar_height);	
}

/*Draw Hotbar Items*/
var items_to_draw = 0;
if(ds_list_size(inv) > slots_wide) items_to_draw = slots_wide;
else items_to_draw = ds_list_size(inv);
	

if(!ds_list_empty(inv)) { //If the list isn't empty
	for(var i = 0; i < items_to_draw; i++) { //For each item in the hotbar

		var current_obj_prop = inv[| i]; //Get the item in the current index
		var current_obj_name = current_obj_prop[0]; //Get the item's name
		var current_obj_amount = current_obj_prop[1] //Get the item's amount
		var current_obj_index = asset_get_index(current_obj_name); //Get the item's index
		var current_obj_sprite = object_get_sprite(current_obj_index); //Get the item's sprite
			
		if(!sprite_exists(current_obj_sprite)) current_obj_sprite = sDebug_NotFound;

		if(sprite_exists(current_obj_sprite)) { //If the sprite exists
			var sprite_x = hotBarBorder_x + (hotBar_width/slots_wide) * (i+1) - (hotBar_width/slots_wide)/2;
			var sprite_y = win_height - hotBarBorder_y - (hotBar_height/2);
			draw_sprite_ext(current_obj_sprite, 0, sprite_x, sprite_y, 4, 4, 0, c_white, 1);
			if(current_obj_amount > 1) { //If there is more than one item
				draw_set_colour(c_white);
				draw_set_alpha(1);
				draw_text(sprite_x, sprite_y, string(current_obj_amount)); //Write the amount
			}			
		}
	}	
}

