/// @desc Draw Tank

draw_self();

for (var i = 0; i < amountOfCannons; i++) {
	var _dir = i * 360 / amountOfCannons + rotationCurrent; 
	draw_sprite_ext(sLaserCannonEnemy, cannonFrame, x+lengthdir_x(28-cannonKnockback, _dir), y+lengthdir_y(28-cannonKnockback, _dir), 1, 1, _dir, c_white, 1);
}
HealthBar(x, bbox_top-4, hp/maxHp);





