/// @desc Initialize
/*
It is good practice to set the resolution of your first room to be the resolution of your game.
*/

//Window

surface_resize(application_surface, 480, 270);
window_set_size(960, 540); 

window_center();

// Shader Uniforms
global.uWhiteAlpha = shader_get_uniform(shWhite, "alpha");


// Game
global.score = 0;
global.title = true;
global.gameStart = false;


// Music
global.music = [
	[oBasicEnemy, mBasicEnemy],
	[oGunner, mGunner],
	[oTank, mTank],
	[oBomb, mBomb],
	[oClock, mClock]
]

audio_play_sound(mDefault, 1, true);
for(var i = 0 ; i < array_length(global.music); i++) {
	global.music[i][1] = audio_play_sound(global.music[i][1], 1, true, 0);
}

room_goto_next(); 




