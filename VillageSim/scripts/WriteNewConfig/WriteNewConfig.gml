///@description Write the defaults to a new options.ini file.

show_debug_message("Writing a new configuration file");

ini_open(working_directory + "options.ini")

///Window
ini_write_real("Window", "window height", display_get_height()); //Height of windowed mode
ini_write_real("Window", "window width", display_get_width()); //Width of windowed mode
ini_write_real("Window", "fullscreen height", display_get_height()); //Height of fullscreen mode
ini_write_real("Window", "fullscreen width", display_get_width()); //Width of fullscreen mode

ini_write_real("Window", "windowed", 1); //1 if windowed, 0 if fullscreen;

///Controls
//Hotbar
ini_write_string("Controls", "hotbar slot 10", global.hotbarSlot10);
ini_write_string("Controls", "hotbar slot 9", global.hotbarSlot9);
ini_write_string("Controls", "hotbar slot 8", global.hotbarSlot8);
ini_write_string("Controls", "hotbar slot 7", global.hotbarSlot7);
ini_write_string("Controls", "hotbar slot 6", global.hotbarSlot6);
ini_write_string("Controls", "hotbar slot 5", global.hotbarSlot5);
ini_write_string("Controls", "hotbar slot 4", global.hotbarSlot4);
ini_write_string("Controls", "hotbar slot 3", global.hotbarSlot3);
ini_write_string("Controls", "hotbar slot 2", global.hotbarSlot2);
ini_write_string("Controls", "hotbar slot 1", global.hotbarSlot1);


//Movement
ini_write_string("Controls", "right", global.rightControl);
ini_write_string("Controls", "left", global.leftControl);
ini_write_string("Controls", "down", global.downControl);
ini_write_string("Controls", "up", global.upControl);

///Audio
ini_write_real("Audio", "music muted", 0); //1 if muted, 0 if not
ini_write_real("Audio", "sound muted", 0); //1 if muted, 0 if not

ini_close();