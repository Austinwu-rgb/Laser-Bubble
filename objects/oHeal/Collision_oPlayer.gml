/// @desc Heal Player

//other will reference the other object you are colliding with in the collision event
other.hp++;
other.flash = 1;
audio_play_sound(snHeal, 3, false);

repeat(50) {
	with(instance_create_depth(x, y, oPlayer.depth+1, oPlayerTrail)) {
		image_speed = random_range(0.7, 1);
		direction = random(360);
		speed = random_range(0.8, 2);
		//blends the colour of the image
		image_blend = c_aqua;
	}
}

instance_destroy();