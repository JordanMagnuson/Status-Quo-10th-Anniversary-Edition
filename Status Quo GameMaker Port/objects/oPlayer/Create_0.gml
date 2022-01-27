	event_inherited();
	
	global.g = 0;
	global.accel = 0;
	global.accelCurrent = 0;
	global.playerSpeed = 0;	
	global.inDarkness = false;
	x =  room_width / 2;
	y =  (room_height / 2) +80;
	
	canMove = true;
	
	
	
		function accelMovement()
		{
		//	if (!frozen)     //add back in when beginning of game is set up
		//	{
				gravityit();
			if (canMove) {
					acceleration();}
				move(global.playerSpeed *.1, pointDirection(oPlayer.x, oPlayer.y, room_width / 2, room_height / 2));				
			
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
				global.playerSpeed += global.accel *.1;
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
			
			global.playerSpeed += global.g *.1;
			if (global.playerSpeed > 60) {  //can fix using the macros instead of number?
				global.playerSpeed = 60;
			}
			if (global.playerSpeed < -60){
				global.playerSpeed = -60;
			}
		}
		
		function inDarkness()
		{
			if (switchInDarkness)
				global.inDarkness = !global.inDarkness;
			return global.inDarkness;
		}