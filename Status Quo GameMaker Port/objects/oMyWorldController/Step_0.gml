if (gameOver && image_alpha < 1){
	image_alpha += FADE_SPEED;
}
else if (gameOver and image_alpha > 1){
	gameOver = false;
	endScreen = true;
	room_goto_next()
}
else if (endScreen and image_alpha > 0){
	image_alpha -= FADE_SPEED * 1.5;
}
