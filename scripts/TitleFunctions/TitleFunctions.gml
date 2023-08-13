function ResetGame() {
	global.gameStart = false;	
	global.score = 0;
	oWaveSpawner.waveNumber = 0;
	//setting alarm to -1 stops it
	oWaveSpawner.alarm[0] = -1;
	
	with(oPlayer) {
		x = room_width/2;
		y = room_height/2;
		hsp = 0;
		vsp = 0;
		visible = true;
		dead = false;
		canCollide = true;
		sprite_index = sPlayer;
		hp = maxHp;
		knockback = 0;
	}
	
	instance_destroy(oLaserBeam);
	instance_destroy(pEnemy);
	instance_destroy(oHeal);
	
	for(var i = 0; i < array_length(globa.music); i++) {
		audio_sound_gain(global.music[i][1], 0, 1000);
	}
	audio_sound_gain(mDefault, 1, 200);
}

function StartGame() {
	instance_create_layer(room_width/2, room_height/2, "Player", oPlayer);
	global.title = false;
	instance_destroy(oTitle);
}

function StopGame() {
	ResetGame();
	instance_destroy(oPlayer);
	global.title = true;
	instance_create_layer(0, 0, "Global", oTitle);
}