/*Hotbar Variables*/
var inv = global.inventory_ds_list;

var win_height = display_get_gui_height(); //The height of the window
var win_width = display_get_gui_width(); //The width of the window

var slots_wide = oInventory.hotBarSlots; //Width of the hotbar grid
var slot = selectedHotbarSlot; //Currently selected slot

var hotBar_width = 64*slots_wide + (slots_wide-1); //The width of the hotbar
var selector_height = 64; //The height of the hotbar selector
var selector_width = 64//The width of the hotbar selector

var hotBarBorder_x = (win_width - hotBar_width) / 2; //The border between the left and right side of the window and the hotbar
var hotBarBorder_y = 64 //The border between the bottom of the window and the hotbar

draw_set_color(c_green); //The color of the hotbar selector
draw_set_alpha(1); //The alpha of the hotbar selector

/*Draw Selector*/
draw_rectangle(selector_width * slot + hotBarBorder_x, win_height - selector_height - hotBarBorder_y, selector_width * slot + hotBarBorder_x - selector_width, win_height - hotBarBorder_y, true);