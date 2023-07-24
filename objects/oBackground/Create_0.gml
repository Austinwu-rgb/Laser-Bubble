/// @desc Create Background

// Bubbles (sprite_get_number() gets # of frames in the sprite)

bubbleFrames = sprite_get_number(sBackgroundBubbles);
bubbles = [];

repeat(20) {
	array_push(bubbles, {
		subimg: irandom(bubbleFrames-1),
		//even though x is green it is not a built in variable inside of strucs (hashmaps)
		x: random(room_width),
		y: random(room_height),
		spd: random_range(0.01, 1)
	});	
}








