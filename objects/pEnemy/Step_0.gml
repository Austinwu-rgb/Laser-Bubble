/// @desc Enemy Basics but in the step event.

if (waitTime > 0) {
	waitTime--;
} else if (introFrame > 0) {
	introFrame--;
	x = lerp(xstart, offScreenX, introFrame/maxIntroFrame);
	y = lerp(ystart, offScreenY, introFrame/maxIntroFrame);
	if (introFrame <= 0) {
		instance_destroy(warning);
		canCollide= true;
	}
} else{

	flash = max(flash-0.1, 0);

	if (knockback > 0) {
		knockback = max(knockback - 0.5, 0);
		x += lengthdir_x(knockback, knockbackDir);
		y += lengthdir_y(knockback, knockbackDir);
	}

	if (hp <= 0) {
		global.score += worth;
		with(instance_create_layer(x, y, "Score", oScore)) {
			amount = other.worth;
		}
	
		ScreenShake(10, 10);
		audio_play_sound(snEnemyDefeat, 4, false, 1, 0, random_range(0.7, 1));
		instance_destroy();
	}

	//dangerous line, if oPlayer is somehow removed, the game will crash. We can use an if statement
	//checking if it exists if we want to be safe
	playerDir = point_direction(x, y, oPlayer.x, oPlayer.y);
	x += lengthdir_x(spd, playerDir);
	y += lengthdir_y(spd, playerDir);

}
