MAX_RELEASE_RATE = 2;
RELEASE_RATE_CHANGE = 0.6;
		
releaseRate = MAX_RELEASE_RATE;
releaseAngle = 0;

function changeReleaseRate(newRate)
		{
			releaseRate = newRate;
		}
		
function releaseEnemy()
		{
			// Reset the alarm
		//	enemyAlarm.reset(releaseRate);
			//trace('release rate: ' + releaseRate);
			
			// Choose a radius to release at, between safe zone outer radius and inner radius
			r = random_range(oSafeZone.innerRadius, oSafeZone.outerRadius);
			// Convert polar coordinates (r + theta) to cartesian
			var ex = (room_width / 2) + r * cos(releaseAngle * pi / 180);
			var ey = (room_height / 2) - r * sin(releaseAngle * pi / 180);	
			
			// Set the speed equal to lighttail speed (v = angular velocity in radians * r)
			//var speed:Number = (LightTail.speed * Math.PI / 180) * r;
			
			//var e:Enemy = FP.world.create(Enemy, true) as Enemy;
			//e.reset(ex, ey, speed);
			
			instance_create_depth(ex, ey, -100 , oEnemy);
		}		