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
		
		with(instance_create_layer(x,y,layer,oLaserImpactEnemy)) {
			//other.myVar is used to reference OUTSIDE the with statement (so in this case, the laserBeam)
			image_angle = other.image_angle;
		}
		
		with(_collider) {
			//check if a object is child of another object
			//object_index is the object index of the current object (note that this is inside a with statement, so it is _collider)
			if (object_is_ancestor(object_index, pEnemy)) {
				flash = 1;
				hp -= 1/5;
				knockback = 4;
				knockbackDir = other.image_angle;				
			} else if (object_index == oPlayer) {
				HurtPlayer();
				ScreenShake(4, 2);
				knockback = 4;
				knockbackDir = other.image_angle;
			}
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







