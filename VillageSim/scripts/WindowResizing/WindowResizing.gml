application_surface_draw_enable(false);

global.monitor_width = display_get_width();
global.monitor_height = display_get_height();

global.offset_x=(global.monitor_width-global.view_width)/2;
global.offset_y=(global.monitor_height-global.view_height)/2;

//if(global.monitor_width>=1600 && global.monitor_height>=900)
//then
//{
//	surface_resize(application_surface,1600,900)
//	global.offset_x=(global.monitor_width-1600)/2;
//	global.offset_y=(global.monitor_height-900)/2;
//}
draw_surface_ext(application_surface,global.offset_x,global.offset_y,1,1,0,c_white,1);