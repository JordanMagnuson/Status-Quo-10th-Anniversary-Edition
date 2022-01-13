	/**
		 * Moves the entity using polar coordinates
		 * @param	distance	Distance to move (use speed * FP.elapsed for variable time)
		 * @param	direction	Direction to move, in degrees (0 is to the right, ccw)
		 */
		function move(distance, direction)
		{
			// Need to convert degrees to radians for sin/cos functions, hence multiplying by Math.PI/180
			x += distance * cos(direction * pi/180);
			y -= distance * sin(direction * pi/180);	// Minus here, because negative is up	
		}
		
		/**
		 * Returns the direction of point(x1,y1) towards point(x2,y2) in degrees
		 */
		function pointDirection(x1, y1, x2, y2)
		{
			// This is slightly different than the standard cartesian implementation atan2(x2 - x1, y2 - y1)
			// due to the orientation of the game's coordinate system, where 0,0 is at the upper left
			return (arctan2(y1 - y2, x2 - x1) * 180 / pi);
		}
		