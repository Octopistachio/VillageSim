/*Inventory Variables*/

var win_height = display_get_gui_height(); //The height of the window
var win_width = display_get_gui_width(); //The width of the window

var inv = global.inventory_ds_list;

var slots_total = oInventory.inventorySlots;
var slots_wide = oInventory.hotBarSlots; //Width of the inventory grid
var slots_high = slots_total / slots_wide; //Height of the inventory grid

var inv_height = 64*slots_high + (slots_high-1); //The height of the inventory
var inv_width = 64*slots_wide + (slots_wide-1); //The width of the inventory

var invBorder_x = (win_width - inv_width) / 2; //The border between the left and right side of the window and the inventory
var invBorder_y = 64 //The border between the bottom of the window and the inventory


draw_set_color(c_blue); //The color of the inventory
draw_set_alpha(1); //The alpha of the inventory
draw_rectangle(invBorder_x, win_height - inv_height - invBorder_y,  win_width - invBorder_x, win_height - invBorder_y, false);


/*Draw Inventory*/
for(var i = 1; i < slots_wide; i++) { //For each column in the inventory
		var line_x = invBorder_x + (inv_width/slots_wide) * i;
		var line_y = win_height - invBorder_y;
		draw_set_color(c_black);
		draw_line(line_x, line_y, line_x, line_y - inv_height);	
}

for(var i = 1; i < slots_high; i++) { //For each row in the inventory
		var line_x = win_width - invBorder_x;
		var line_y = win_height - (invBorder_y + (inv_height/slots_high) * i);
		draw_set_color(c_black);
		draw_line(line_x, line_y, line_x - inv_width, line_y);	
}

/*Draw Inventory Items*/
var items_to_draw = ds_list_size(inv);

if(!ds_list_empty(inv)) { //If the list isn't empty
	
	var currentRow = 0;
	var currentCol = 0;
	
	for(var i = 0; i < items_to_draw; i++) { //For each row in the inventory			
		
		currentCol++;
		if(i % slots_wide == 0) { //If the counter has reached the number of slots wide
			currentRow++; //Increase the row count
			currentCol = 0; //And reset the column count
		}
			
		if(currentRow > slots_high) break; //If the number of rows is > the , stop drawing
			
		var current_obj_prop = inv[| i]; //Get the item in the current index
		var current_obj_name = current_obj_prop[0]; //Get the item's name
		var current_obj_amount = current_obj_prop[1] //Get the item's amount
		var current_obj_index = asset_get_index(current_obj_name); //Get the item's index
		var current_obj_sprite = object_get_sprite(current_obj_index); //Get the item's sprite
			
		if(!sprite_exists(current_obj_sprite)) current_obj_sprite = sDebug_NotFound;

		if(sprite_exists(current_obj_sprite)) { //If the sprite exists
			var sprite_x = invBorder_x + (inv_width/slots_wide) * (currentCol+1) - (inv_width/slots_wide)/2;
			var sprite_y = win_height - invBorder_y + (64 * currentRow) - inv_height - 32;
			
			draw_sprite_ext(current_obj_sprite, 0, sprite_x, sprite_y, 4, 4, 0, c_white, 1);
				
			if(current_obj_amount > 1) { //If there is more than one item
				draw_set_colour(c_white);
				draw_set_alpha(1);
				draw_text(sprite_x, sprite_y, string(current_obj_amount)); //Write the amount
					
			}
		}
	}
}