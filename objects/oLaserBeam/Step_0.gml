/// @desc Move Beam

if (!collided) {
	image_xscale = Approach(image_xscale, 1, spd/24); 
	var _hsp = lengthdir_x(spd, image_angle); 
	var _vsp = lengthdir_y(spd, image_angle); 
	
	//instance_place() checks if you collide, and returns the ID of the object collides or "noone"
	//place_meeting() checks if you collide, and returns true or false
	var _collider = instance_place(x+_hsp,y+_vsp,pCollider);
	
	if (_collider != noone && _collider.canCollide) {
		collided = true;
		
		move_and_collide(_hsp,_vsp,_collider);
		
		with(instance_create_layer(x,y,layer,oLaserImpact)) {
			image_angle = other.image_angle;
		}
		
		audio_play_sound(snImpact,2,false,1,0,random_range(0.7,1.3)); 
	} else {
		x += _hsp;
		y += _vsp;
	}
} else {
	image_xscale -= spd/24;
	if (image_xscale <= 0) instance_destroy();
}




