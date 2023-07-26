/// @desc Draw particles

//draw function is like a step function in that it repeats every frame
for (var i = 0; i < array_length(particles); i++) {
	var _p = particles[(i + bottomParticle) mod array_length(particles)];	
	if (_p.life > particleLife) continue;
	
	var _color = merge_color(c_black, particleColor, _p.life / particleLife);
	
	if (instance_exists(creator)) {
		_color = merge_color(_color, c_white, creator.flash);
	}
	draw_sprite_ext(sEnemyParticles, 0, _p.x, _p.y, 1, 1, 0, _color, 1);
	
}






