	event_inherited();
	
	global.modeOfDeath =""; 
	
	global.g = 0;
	global.accel = 0;
	global.accelCurrent = 0;
	global.playerSpeed = 0;	
	global.inDarkness = true;
	global.frozen = true;
	x =  room_width / 2;
	y =  (room_height / 2) + 175;
	
	RADIUS_ORIG = 8;
	ENEMY_MOVE_DIST = 20;
	canMove = true;
	radius = 9;
	breathing = true;
	breathValue = 1;
	breathingIn = true;
	breathingOut = false;
	
		function accelMovement()
		{
			if (!global.frozen)     
			{
				gravityit();
			if (canMove) {
					acceleration();}
				move(global.playerSpeed *(delta_time / 1000000), pointDirection(oPlayer.x, oPlayer.y, room_width / 2, room_height / 2));				
			}
		}
		
		function acceleration()
		{		
			global.accel = 0;
			if (global.accelCurrent < 200) // see if can replace with macro
				global.accelCurrent += 0.2;
			if (RESIST) 
			{
				if (inDarkness())
					global.accel = -global.accelCurrent;
				else
					global.accel = global.accelCurrent;
			}
			if (global.accel != 0)
			{
				global.playerSpeed += global.accel * (delta_time / 1000000);
				if (global.playerSpeed > 60) 
					global.playerSpeed = 60;
				if (global.playerSpeed < -60)
					global.playerSpeed = -60;						
			}
			
		}
		
		function gravityit()
		{
			if ((abs(global.g)) < 100) // can fix using the macros isntead of number?
			{
				if (global.g < 0) 
					global.g -= 0.1;
				else global.g += 0.1;
			}
			if (inDarkness())
			{
				if (global.g < 0)
				{
					global.g *= -1;
				}
			}
			else if (global.g > 0)
			{
				global.g *= -1;
			}
			
			global.playerSpeed += global.g * (delta_time / 1000000);
			if (global.playerSpeed > 60) {  //can fix using the macros instead of number?
				global.playerSpeed = 60;
			}
			if (global.playerSpeed < -60){
				global.playerSpeed = -60;
			}
		}
		
		function inDarkness()
		{
			if (point_distance(x,y,(room_width / 2),(room_height / 2)) < oSafeZone.innerRadius)
				return true;
			else if (point_distance(x,y,(room_width / 2),(room_height / 2)) > oSafeZone.outerRadius)
				return false;
			else if (oLightTail.image_angle < 180)
				return true;
			else
				return false;
		}
		
		
		function checkSafeZone()
		{
			if (point_distance(x,y,(room_width / 2),(room_height / 2)) < oSafeZone.innerRadius && canMove)
			{
			//	Globals.timeAlive = GameWorld.timer.timePassed;
				global.modeOfDeath = "absorbed";
			
				canMove = false;
				audio_stop_sound(music);
				audio_play_sound(glitch,1,false);
			}
		else if(point_distance(x,y,(room_width / 2),(room_height / 2)) > oSafeZone.outerRadius)
			{
			//	Globals.timeAlive = GameWorld.timer.timePassed;
				global.modeOfDeath = "destroyed";
				if (!oChina.shootingLazer)
				{
					oChina.shootLazer();
					audio_stop_sound(music);
					audio_play_sound(glitch,1,false);
					frozen = true;
				}
				canMove = false;
			}	
		}
				
		function restoreMovement()
		{
			canMove = true;
		}
		
		function breath()
		{
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
			