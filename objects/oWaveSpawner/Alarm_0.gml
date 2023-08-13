/// @desc Spawn Enemies

waveNumber++;
for (var i = 0; i < array_length(nextWave); i++) {
	instance_create_layer(
		irandom_range(40, room_width-40),	
		irandom_range(40, room_height-40),
		"Enemies",
		nextWave[i]);
		
}


// Healing
if (oPlayer.hp != oPlayer.maxHp and irandom(5) == 0) {
	instance_create_layer(
	irandom_range(40, room_width-40),	
	irandom_range(40, room_height-40),
	"Player",
	oHeal);
}

// Audio
for(var i = 0; i < array_length(global.music); i++) {
	//instance_exists will return 0 if the object is not detected and therefore the gain will be set to 0, and 1 if it does exist
	audio_sound_gain(global.music[i][1], instance_exists(global.music[i][0]), 200);	
	
}