 global.moving = false;
 global.MIN_SPEED = 20;
 global.SPEED_CHANGE_RATE = 2.5;
 tailSpeed = global.MIN_SPEED;
 angle = 90;
 rotations = 0;
 image_angle = 90;
 x =  room_width / 2;
 y =  room_height / 2;
 
/**
* Changes the rotation speed of the light tail to the given number,
* and updates all enemies to match the new speed.
* @param	speed
*/
function changeRotationSpeed(newSpeed){
	tailSpeed = newSpeed;			
}
		
function rotate(){
	angle += (delta_time / 1000000) *  tailSpeed;
	if (angle > 360){	// Full rotation
		rotations++;
		changeRotationSpeed( tailSpeed + (global.SPEED_CHANGE_RATE / rotations));
		oEnemyController.changeReleaseRate(oEnemyController.releaseRate - (oEnemyController.RELEASE_RATE_CHANGE / rotations));
		angle = angle - 360;
	}
	image_angle = angle;		
	if (oSafeZone.breathing){
		image_xscale = oSafeZone.breathValue;
		image_yscale = oSafeZone.breathValue;
	}
}