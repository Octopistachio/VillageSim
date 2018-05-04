ControlDefaults();
if(!file_exists(working_directory + "options.ini"))
	WriteNewConfig();
LoadConfig();

window_set_cursor(cr_none);
cursor_sprite = sArrowCursor;

///Menu Layout Setup
var center_x = room_width / 2; //The center of the room, in the x coord
var center_y = room_height / 2; //The center of the room, in the y coord
var spacer = sprite_get_height(sNewGameButton) / 4 + sprite_get_height(sNewGameButton); //The space between each button

var loadGameBtn = instance_create_depth(center_x, center_y, 0, oLoadGameButton);
var newGameBtn = instance_create_depth(center_x, center_y + spacer, 0, oNewGameButton);