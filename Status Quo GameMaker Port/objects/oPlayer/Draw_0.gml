radius = RADIUS_ORIG * breathValue;
if (RESIST) 
{			
	if (inDarkness())
	{
		draw_set_color(c_white);

		//draw_sprite_ext(sArrow, image_index, x+1, y + 11,1,1,180,c_white,1);
		
		draw_arrow(x, y + (radius + 2), x, y + (radius + 14), 7);
	}
	else {
		draw_set_color(c_black);
	//	draw_sprite_ext(sArrow, image_index, x, y - 11,1,1,0,c_black,1);
		draw_arrow(x, y - (radius + 2), x, y - (radius + 14), 7);
	}
}	

if (inDarkness())
	{
		draw_set_color(c_white);
	}
	else {
		draw_set_color(c_black);
	}
	//draw_set_circle_precision(64);
draw_circle(x, y, radius, false);
draw_set_color(c_white);