/// @desc Create Particles

destroyParticles = false;
particleLife = 25;
creator = noone;
particleColor= c_red;
bottomParticle = particleLife;
particles = [];

for(var i = 0; i < particleLife; i++) {
	array_push(particles, {
		x: x + random_range(-8, 8),
		y: y + random_range(-8, 8),
		life: particleLife + i,
		dir: random(360)
	});
}

