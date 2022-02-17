if (minutesAlive > 0)
	draw_text((room_width/2) -275, (room_height / 2) - 65,"You managed to keep the status quo for " + minutesAliveString + " and " + secondsAliveString + ",");
else
	draw_text((room_width/2) -225, (room_height / 2) - 65,"You managed to keep the status quo for " + secondsAliveString + ",");
draw_text((room_width/2) -250, (room_height / 2) - 35,modeOfDeathString);				
draw_text((room_width/2) -100, (room_height / 2) + 35,"Press space to try again.");	
draw_text((room_width/2) -150, (room_height / 2) + 65,"Press X to learn more about Taiwan.");
draw_text((room_width/2) +24, 140,string(floor(global.secondsAlive)));
