global.INNER_RADIUS_ORIG = 117;
global.OUTER_RADIUS_ORIG = 227;
innerRadius = global.INNER_RADIUS_ORIG;
outerRadius = global.OUTER_RADIUS_ORIG
// Initial position
	x =  room_width / 2;
	y =  room_height / 2;
	
breathing = false;
breathValue = 1;
breathingIn = true;
breathingOut = false;

function startBreathing(){
breathing = true;
}

function breath()
		{
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