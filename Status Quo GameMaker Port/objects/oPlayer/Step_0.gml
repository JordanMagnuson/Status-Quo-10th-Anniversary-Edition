RESIST = keyboard_check(vk_space);
//switchInDarkness = keyboard_check_pressed(vk_right); //for testing purposes
accelMovement();
if (!global.debug) {
	checkSafeZone();
}
if (breathing)
	breath();