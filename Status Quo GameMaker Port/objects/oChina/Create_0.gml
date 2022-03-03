LAZER_DURATION = .2;
RADIUS_ORIG = 43;
radius = RADIUS_ORIG;
shootingLazer = false;
breathing = true;
breathValue = 1;
breathingIn = true;
breathingOut = false;
gameOver = false;

x =  room_width / 2;
y =  room_height / 2;

/**
* Draws a "lazer" line between China and the playe.
*/
function shootLazer(){
	audio_stop_sound(music);;
	audio_play_sound(lazer,1,false);
	shootingLazer = true;
	alarm[0] = room_speed * LAZER_DURATION;
	// Freeze everything
	breathing = false;
	oPlayer.breathing = false;
	oLightTail.changeRotationSpeed(0);
	//oEnemyController.enemyAlarm.active = false;
}
		
function breath(){
	if (breathingIn){
		breathValue += (.2/(room_speed*3));
		if (breathValue > 1.2){
			breathingIn = false;
			breathingOut = true;
		}
	}
	else if (breathingOut){
		breathValue -= (.2/(room_speed*3));
		if (breathValue < 1){
			breathingIn = true;
			breathingOut = false;
		}
	}
}
		