if(global.paused) {
	if(mouse_check_button_pressed(mb_left)) {
		if (collision_point(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), oApple, false, false)) {
			show_debug_message("test");
			
		}
	}
}