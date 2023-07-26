/// @desc Enemy Basics but in the step event.

flash = max(flash-0.1, 0);

if (knockback > 0) {
	knockback = max(knockback - 0.5, 0);
	x += lengthdir_x(knockback, knockbackDir);
	y += lengthdir_y(knockback, knockbackDir);
	
}

//dangerous line, if oPlayer is somehow removed, the game will crash. We can use an if statement
//checking if it exists if we want to be safe
playerDir = point_direction(x, y, oPlayer.x, oPlayer.y);
x += lengthdir_x(spd, playerDir);
y += lengthdir_y(spd, playerDir);


