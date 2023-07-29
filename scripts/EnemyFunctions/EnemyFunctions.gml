function HealthBar(_x,_y,_percent) {
	//always set the colour before drawing something as it is a global variable, 
	//the previous colour will stay the previous colour unless changed.
	
	draw_set_colour(c_black);
	draw_rectangle(_x-16, _y-6, _x+16, _y, false);
	
	//changes from green to red as health depletes
	if (_percent > 0) {
		draw_set_colour(merge_color(c_red,c_lime, _percent));	
		//lerp is essentially a + (b-a) * percent (Gets a number between a and b depending on percent)
		draw_rectangle(_x-14, _y-4, _x+lerp(-14, 14, _percent), _y-2, false);
	}
	
	
	//if you have a variable in a function, it references the variable of whatever object calls the function. 
}