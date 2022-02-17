event_inherited();

centerX = room_width/2;
centerY = room_height/2;

	 function getAngle()
		{
			return pointDirection(centerX, centerY, x, y);
		}
		
	 function continueOrbit(EnemySpeed)
		{
			motion_set((getAngle() + 90),EnemySpeed);
		}		