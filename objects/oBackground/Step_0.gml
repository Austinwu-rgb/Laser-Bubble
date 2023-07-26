/// @desc Move Bubbles

//loop over every bubble, and moving them up by their speed
for(var i =0; i < array_length(bubbles); i++) {
	
	bubbles[i].y -= bubbles[i].spd;
	
	if (bubbles[i].y < -10) {
		//sub images are the individual frames of the sprite (so in this we are choosing a random frame of the sprite)
		bubbles[i].subimg = irandom(bubbleFrames-1);
		bubbles[i].x = random(room_width);
		bubbles[i].y = random(room_height);
		bubbles[i].spd = random_range(0.01,1);
	}
	
	
}






