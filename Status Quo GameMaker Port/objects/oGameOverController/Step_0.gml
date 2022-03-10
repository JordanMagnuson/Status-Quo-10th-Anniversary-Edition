if (keyboard_check(vk_space) || mouse_check_button_pressed(mb_left)){
	instance_destroy(oMyWorldController);
	room_goto_previous();
}
	
if (keyboard_check(ord("X")))
	url_open("http://www.gametrekking.com/about-taiwan");