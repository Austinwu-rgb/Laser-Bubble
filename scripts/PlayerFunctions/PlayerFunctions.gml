function HurtPlayer() {
	
	with(oPlayer) {
		//with is a loop, so we can use continue/break
		if (dead or flash != 0) continue;
		flash = 1;
		hp --;
		audio_play_sound(snHurt, 3, false);
		if (hp <= 0) {
			dead = true;
			canCollide = false;
			alarm[0] = 30;
			ScreenShake(5,60);
			audio_sound_gain(mDefault, 0, 200);
		} else {
			ScreenShake(5,10);
		}
	}
}

