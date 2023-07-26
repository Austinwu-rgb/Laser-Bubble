function HurtPlayer() {
	
	with(oPlayer) {
		//with is a loop, so we can use continue/break
		if (dead or flash != 0) continue;
		flash = 1;
		hp --;
		audio_play_sound(snHurt, 3, false);
		ScreenShake(5,10);
		
	}
}