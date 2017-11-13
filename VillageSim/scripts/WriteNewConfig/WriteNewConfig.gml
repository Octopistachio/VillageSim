///@description Write the defaults to a new options.ini file.

ini_open(working_directory + "options.ini")

///Window
ini_write_real("Window", "window height", display_get_height()); //Height of windowed mode
ini_write_real("Window", "window width", display_get_width()); //Width of windowed mode
ini_write_real("Window", "fullscreen height", display_get_height()); //Height of fullscreen mode
ini_write_real("Window", "fullscreen width", display_get_width()); //Width of fullscreen mode

ini_write_real("Window", "windowed", 1); //1 if windowed, 0 if fullscreen;

///Controls
ini_write_string("Controls", "right", "d");
ini_write_string("Controls", "left", "a");
ini_write_string("Controls", "down", "s");
ini_write_string("Controls", "up", "w");


///Audio
ini_write_real("Audio", "music muted", 0); //1 if muted, 0 if not
ini_write_real("Audio", "sound muted", 0); //1 if muted, 0 if not

ini_close();