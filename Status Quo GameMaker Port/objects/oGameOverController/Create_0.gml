draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(menuFont);
draw_set_color(c_white);

minutesAlive = global.secondsAlive / 60;
secondsAlive = global.secondsAlive % 60;
minutesAlive = floor(minutesAlive);
secondsAlive = floor(secondsAlive);


if (minutesAlive == 1)
	minutesAliveString = "1 minute";
else 
	minutesAliveString = string(minutesAlive) + " minutes";	
if (secondsAlive == 1)
	secondsAliveString = "1 second";
else 
	secondsAliveString = string(secondsAlive) + " seconds";
if (global.modeOfDeath = "absorbed")
	modeOfDeathString = "before getting too close to and being absorbed by a larger circle."
else if (global.modeOfDeath = "destroyed")
	modeOfDeathString = "before antagonizing and being destroyed by a larger circle."