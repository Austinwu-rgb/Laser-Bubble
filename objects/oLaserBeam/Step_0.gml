/// @desc Move Beam

if (!collided) {
	image_xscale = Approach(image_xscale, 1, spd/24); 
	var _hsp = lengthdir_x(spd, image_angle); 
	var _vsp = lengthdir_y(spd, image_angle); 
	
	x += _hsp;
	y += _vsp; 
}




