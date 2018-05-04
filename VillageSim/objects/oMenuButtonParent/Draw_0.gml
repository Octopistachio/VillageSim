///@description Changes the color when clicked

draw_self();

if(mouseOnButton) {
	if(mouse_check_button_pressed(mb_left)) {
		image_blend = c_gray;
		alarm[0] = buttonTimerAmount;
	}
	
}