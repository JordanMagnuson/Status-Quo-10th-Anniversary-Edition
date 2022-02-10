event_inherited();

DARK_COLOR = c_black;
LIGHT_COLOR = c_white;

EnemyRotations = 0;
LastAngle = 0; 



 function speedMatchLightTail()
		{
			return (((oLightTail.tailSpeed * pi / 180) * (point_distance(x,y,centerX,centerY)))/ room_speed);
		} 

//	    function updateRotations()
//		{
//			currentAngle = pointDirection(centerX, centerY, x, y);
//			if (currentAngle < 0)
//				currentAngle += 360;
//			if (currentAngle < lastAngle && currentAngle > EnemyController.releaseAngle)
//			{
//				rotations++;
//			}
//			lastAngle = currentAngle;			
//		}

function inDarkness()
		{
			 angle = pointDirection(centerX, centerY, x, y);
			if (angle < 0)
				angle += 360;			
			if (abs(oLightTail.image_angle - angle) > 88 && abs(oLightTail.image_angle - angle) < 270)
				return true;
			else
				return false;
		}	