/// @description Camera code

var view_width = 640;
var view_height = 480;

var border_x = 256;
var border_y = border_x;

//Enable the use of views
view_enabled = true;

//Make view 0 visible
view_set_visible(0, true);

view_camera[0] = camera_create_view(0, 0, view_width, view_height, 0, oPlayer, -1, -1, border_x, border_y);