show_debug_message("Loading the configuration file");

ini_open(working_directory + "options.ini")

/*Gets*/
///Get Window
var isWindowed = ini_read_real("Window", "windowed", 1); //1 if windowed, 0 if fullscreen;

var win_width = ini_read_real("Window", "window width", display_get_width()); //Width of windowed mode
var win_height = ini_read_real("Window", "window height", display_get_height()); //Height of windowed mode

var full_width = ini_read_real("Window", "fullscreen width", display_get_width()); //Width of fullscreen mode
var full_height = ini_read_real("Window", "fullscreen height", display_get_height()); //Height of fullscreen mode

///Get Controls
//Movement
var rightControl = ini_read_string("Controls", "right", global.rightControl);
var leftControl = ini_read_string("Controls", "left", global.leftControl);
var downControl = ini_read_string("Controls", "down", global.downControl);
var upControl = ini_read_string("Controls", "up", global.upControl);

//Hotbar
var hotbarSlot1 = ini_read_string("Controls", "hotbar slot 1", global.hotbarSlot1);
var hotbarSlot2 = ini_read_string("Controls", "hotbar slot 2", global.hotbarSlot2);
var hotbarSlot3 = ini_read_string("Controls", "hotbar slot 3", global.hotbarSlot3);
var hotbarSlot4 = ini_read_string("Controls", "hotbar slot 4", global.hotbarSlot4);
var hotbarSlot5 = ini_read_string("Controls", "hotbar slot 5", global.hotbarSlot5);
var hotbarSlot6 = ini_read_string("Controls", "hotbar slot 6", global.hotbarSlot6);
var hotbarSlot7 = ini_read_string("Controls", "hotbar slot 7", global.hotbarSlot7);
var hotbarSlot8 = ini_read_string("Controls", "hotbar slot 8", global.hotbarSlot8);
var hotbarSlot9 = ini_read_string("Controls", "hotbar slot 9", global.hotbarSlot9);
var hotbarSlot10 = ini_read_string("Controls", "hotbar slot 10", global.hotbarSlot10);


ini_close();

/*Sets*/
///Set Window
if(isWindowed == 0) {
	window_set_fullscreen(true);
	window_set_size(win_width, win_height);
}
else {
	window_set_fullscreen(false);
	window_set_size(full_width, full_height);
	window_command_run(window_command_maximize);
}

///Set Controls
//Movement
global.rightControl = ord(rightControl);
global.leftControl = ord(leftControl);
global.downControl = ord(downControl);
global.upControl = ord(upControl);

//Hotbar
global.hotbarSlot1 = ord(hotbarSlot1);
global.hotbarSlot2 = ord(hotbarSlot2);
global.hotbarSlot3 = ord(hotbarSlot3);
global.hotbarSlot4 = ord(hotbarSlot4);
global.hotbarSlot5 = ord(hotbarSlot5);
global.hotbarSlot6 = ord(hotbarSlot6);
global.hotbarSlot7 = ord(hotbarSlot7);
global.hotbarSlot8 = ord(hotbarSlot8);
global.hotbarSlot9 = ord(hotbarSlot9);
global.hotbarSlot10 = ord(hotbarSlot10);