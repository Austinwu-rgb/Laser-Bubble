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



room_goto_next(); 


