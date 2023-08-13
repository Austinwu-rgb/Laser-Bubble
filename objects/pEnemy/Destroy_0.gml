/// @desc Destroy Particles

//Destroy event gets called right BEFORE the instance_destroy() function is called.

particles.destroyParticles = true;

//This if statement will run the following code when 
if(instance_number(object_index) == 1 and instance_number(pEnemy) > 1) {
	audio_sound_gain(global.music[enemyNumber][1], 0, 500);
}

//If you try to destroy an object that doesn't exist, the game will just ignore it (won't crash)
instance_destroy(warning);