/// @desc Draw Self and Cannon

if (flash != 0) {
	shader_set(shWhite);
	shader_set_uniform_f(global.uWhiteAlpha, flash);
	
}


draw_self();
draw_sprite_ext(sLaserCannon, 0, x+lengthdir_x(28-cannonKnockback, cannonDir), y+lengthdir_y(28-cannonKnockback,cannonDir), 1, 1, cannonDir, c_white, 1);


if (flash != 0) shader_reset(); 







