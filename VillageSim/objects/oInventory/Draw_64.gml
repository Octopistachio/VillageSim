/// @description Draw the inventory
var win_height = window_get_height();
var win_width = window_get_width();

var hotBarBorder_x = 64;
var hotBarBorder_y = hotBarBorder_x;
var hotBar_height = 128;
var hotBar_width = win_width - hotBarBorder_x*2;

draw_set_color(c_red);
draw_set_alpha(1);
draw_rectangle(hotBarBorder_x, win_height - hotBar_height - hotBarBorder_y,  win_width - hotBarBorder_x, win_height - hotBarBorder_y, false);