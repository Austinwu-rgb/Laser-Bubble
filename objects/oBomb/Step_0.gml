/// @desc Bomb Step Event

// Inherit the parent event
event_inherited();

if (introFrame > 0) exit;

x = xstart + random_range(-5, 5);
y = ystart + random_range(-5, 5);

if (hp <= 0) {
	var _laserCount = 10;

	for (var i = 0; i < _laserCount; i++) {
		var _dir = i * 360 / _laserCount + playerDir;
		with(instance_create_layer(xstart+lengthdir_x(20, _dir), ystart+lengthdir_y(20, _dir), "Laser", oLaserBeamEnemy)) {
			image_angle = _dir;
		
		}
	}

	audio_play_sound(snEnemyShoot, 2, false, 1, 0, random_range(0.7, 1));		
}

