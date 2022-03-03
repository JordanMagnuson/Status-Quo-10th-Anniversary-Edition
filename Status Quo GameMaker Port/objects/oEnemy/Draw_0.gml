if (inDarkness())
	draw_set_color(c_white);
else
	draw_set_color(c_black);	
draw_set_alpha(image_alpha);
draw_rectangle((x-4), (y+4), (x+4), (y-4), false);
draw_set_color(c_white);
draw_set_alpha(1);