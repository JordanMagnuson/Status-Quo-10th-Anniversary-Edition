if (gameOver && image_alpha < 1)
	image_alpha += FADE_SPEED;
else if (gameOver and image_alpha > 1){
	global.secondsAlive = timeAlive / room_speed;
	gameOver = false;
	endScreen = true;
	room_goto_next()
}
else if (endScreen and image_alpha > 0)
	image_alpha -= FADE_SPEED;
if (gameOver = false && endScreen = false)
	timeAlive++;
