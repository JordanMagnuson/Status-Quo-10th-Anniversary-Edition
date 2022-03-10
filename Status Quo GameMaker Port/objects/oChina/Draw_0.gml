radius = RADIUS_ORIG * breathValue;
draw_set_color(c_white);
if (shootingLazer)
		draw_line(room_width/2,  room_height/2, room_width/2, room_height);
draw_set_circle_precision(64);
draw_circle(x, y, radius, false);