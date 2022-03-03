	event_inherited();
	
	global.modeOfDeath =""; 
	
	g = 0;
	acell = 0;
	acellCurrent = 0;
	mySpeed = 0;	
	frozen = true;
	x =  room_width / 2;
	y =  (room_height / 2) + 175;
	
	RADIUS_ORIG = 8;
	MAX_SPEED = 60;
	GRAV = 100;
	ACCEL = 200
	ENEMY_MOVE_DIST = 20;
	canMove = true;
	radius = 9;
	breathing = true;
	breathValue = 1;
	breathingIn = true;
	breathingOut = false;
	
function accelMovement(){
	if (!frozen){
		gravityit();
		if (canMove) 
			acceleration();
		move(mySpeed *(delta_time / 1000000), pointDirection(oPlayer.x, oPlayer.y, room_width / 2, room_height / 2));				
	}
}
		
function acceleration(){		
	acell = 0;
	if (acellCurrent < ACCEL)
		acellCurrent += 0.2;
	if (RESIST) 
	{
		if (inDarkness())
			acell = -acellCurrent;
		else
			acell = acellCurrent;
	}
	if (acell != 0){
		mySpeed += acell * (delta_time / 1000000);
		if (mySpeed > MAX_SPEED) 
			mySpeed = MAX_SPEED;
		if (mySpeed < -MAX_SPEED)
			mySpeed = -MAX_SPEED;						
	}
}
		
function gravityit(){
	if ((abs(g)) < GRAV) // can fix using the macros isntead of number?
	{
		if (g < 0) 
			g -= 0.1;
		else g += 0.1;
	}
	if (inDarkness())
	{
		if (g < 0)
			g *= -1;
	}
	else if (g > 0)
		g *= -1;
	mySpeed += g * (delta_time / 1000000);
	if (mySpeed > MAX_SPEED)
		mySpeed = MAX_SPEED;
	if (mySpeed < -MAX_SPEED)
		mySpeed = -MAX_SPEED;
}
		
function inDarkness(){
	if (point_distance(x,y,(room_width / 2),(room_height / 2)) < oSafeZone.innerRadius)
		return true;
	else if (point_distance(x,y,(room_width / 2),(room_height / 2)) > oSafeZone.outerRadius)
		return false;
	else if (oLightTail.image_angle < 180)
		return true;
	else
		return false;
}
		
function checkSafeZone(){
	if (point_distance(x,y,(room_width / 2),(room_height / 2)) < oSafeZone.innerRadius && canMove){
		global.modeOfDeath = "absorbed";
		canMove = false;
		audio_stop_sound(music);
		audio_play_sound(glitch,1,false);
	}
	else if(point_distance(x,y,(room_width / 2),(room_height / 2)) > oSafeZone.outerRadius){
		global.modeOfDeath = "destroyed";
		if (!oChina.shootingLazer){
			oChina.shootLazer();
			frozen = true;
		}
		canMove = false;
	}	
}
		
function breath(){
	 if (breathingIn){
		breathValue += (.15/(room_speed*1));
		if (breathValue > 1.15){
			breathingIn = false;
			breathingOut = true;
		}
	}
	else if (breathingOut){
		breathValue -= (.15/(room_speed*1));
		if (breathValue < 1){
			breathingIn = true;
			breathingOut = false;
		}
	}
}
			