innerRadius = global.INNER_RADIUS_ORIG * breathValue;
outerRadius = global.OUTER_RADIUS_ORIG * breathValue;
draw_set_circle_precision(64);
draw_circle(x, y, innerRadius, true);
draw_circle(x, y, outerRadius,true);
