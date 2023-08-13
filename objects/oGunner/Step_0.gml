/// @desc Gunner Step

// Inherit the parent event
event_inherited();

if (introFrame > 0) exit;

cannonKnockback = max(cannonKnockback-1,0);

if (cannonAnimating) {
	cannonFrame += cannonAnimationSpd;
	if (cannonFrame >= cannonNumFrames-1) {
		cannonKnockback = 6;
		with(instance_create_layer(x+lengthdir_x(20,playerDir), y+lengthdir_y(20,playerDir), "Laser", oLaserBeamEnemy)) {
			image_angle = other.playerDir;
		}
		
		audio_play_sound(snEnemyShoot, 2, false, 1, 0, random_range(0.7,1));
		
		cannonFrame = 0;
		cannonAnimating = false;		
	}

}	else if (alarm[0] <= 0) {
	alarm[0] = shootWaitTimer;	
	
}







