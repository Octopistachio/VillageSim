ini_open(working_directory + "options.ini")

/*Gets*/
///Get Window
var isWindowed = ini_read_real("Window", "windowed", 1); //1 if windowed, 0 if fullscreen;

var win_width = ini_read_real("Window", "window width", display_get_width()); //Width of windowed mode
var win_height = ini_read_real("Window", "window height", display_get_height()); //Height of windowed mode

var full_width = ini_read_real("Window", "fullscreen width", display_get_width()); //Width of fullscreen mode
var full_height = ini_read_real("Window", "fullscreen height", display_get_height()); //Height of fullscreen mode

///Get Controls
var rightControl = ini_read_string("Controls", "right", "d");
var leftControl = ini_read_string("Controls", "left", "a");
var downControl = ini_read_string("Controls", "down", "s");
var upControl = ini_read_string("Controls", "up", "w");

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
if(instance_exists(oPlayer)) {
	oPlayer.rightControl = rightControl;
	oPlayer.leftControl = leftControl;
	oPlayer.downControl = downControl;
	oPlayer.upControl = upControl;
}

