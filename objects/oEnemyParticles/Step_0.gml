/// @desc Move Particles

for(var i = 0; i < array_length(particles); i++) {
	particles[i].life--;
	
	//So less particles are spawned at the beginning as some particles will spawn > particleLife (from create event)
	if (particles[i].life > particleLife) continue;
	
	
	particles[i].x += lengthdir_x(0.4,particles[i].dir);
	particles[i].y += lengthdir_y(0.4,particles[i].dir);
	
	if (particles[i].life <= 0) {
		if (destroyParticles) {
			array_delete(particles, i , 1);
			i--;
			if (array_length(particles) == 0) instance_destroy();
		} else {
			particles[i].x = x + random_range(-8, 8);
			particles[i].y = y + random_range(-8, 8);
			particles[i].dir = random(360);
			particles[i].life = particleLife;
			bottomParticle = i + 1;
		}
	}
}






