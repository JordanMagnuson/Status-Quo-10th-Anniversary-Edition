
if (point_distance(x,y,(room_width / 2),(room_height / 2)) > global.OUTER_RADIUS_ORIG)
			{
				draw_set_color(c_white);
			}
			else if (inDarkness())
			{
				draw_set_color(c_white);
			}
			else 
				draw_set_color(c_black);
draw_circle(x, y, 9, false);
draw_set_color(c_white);