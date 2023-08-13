/// @desc Blow up

//The animation end event gets called when the current sprite reaches the end of its animation frames.

if (sprite_index = sPlayerDie) {
	audio_play_sound(snDie, 4, false);
	visible = false;
	image_speed = 0;
	repeat(50) {
		with(instance_create_depth(x,y,depth+1, oPlayerTrail)) {
			image_speed = random_range(0.7, 1);
			direction = random(360);
			speed = random_range(0.8, 4);
			
		}
	}
}






