/// @desc Tank Step

// Inherit the parent event
event_inherited();

if (introFrame > 0) exit;

cannonKnockback = max(cannonKnockback-1,0);
rotationCurrent = min(rotationTarget, rotationCurrent + rotationSpd);


if (cannonAnimating) {
	cannonFrame += cannonAnimationSpd;
	if (cannonFrame >= cannonNumFrames-1) {
		cannonKnockback = 6;
		
		for(var i = 0; i < amountOfCannons; i++) {
			var _dir = i * 360 / amountOfCannons + rotationCurrent;
			
			with(instance_create_layer(x+lengthdir_x(20,_dir), y+lengthdir_y(20,_dir), "Laser", oLaserBeamEnemy)) {
				image_angle = _dir;
			}		
		}
		

		audio_play_sound(snEnemyShoot, 2, false, 1, 0, random_range(0.7,1));
		
		cannonFrame = 0;
		cannonAnimating = false;
		rotationTarget += 30;
	}

}	else if (alarm[0] <= 0) {
	alarm[0] = shootWaitTimer;	
	
}

if (knockback == 0) {
	x = xstart;
	y = ystart;
}






