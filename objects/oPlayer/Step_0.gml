/// @desc Movement

/*
	0,0 is top left of screen.
	It is good practice to name local variables with underscore. 
	For angles, 0 degrees would be the right of a circle in gamemaker. 
*/

// Set Speed

var _moveX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _moveY = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (_moveX != 0 or _moveY != 0) {
	
	//We use an if statement because if moth _moveX and _moveY are 0, the point_direction function will still return 0,0 when the coordinates match.
	
	var _dir = point_direction(0,0,_moveX,_moveY);
	hsp = lengthdir_x(moveSpd, _dir);		
	vsp = lengthdir_y(moveSpd, _dir);
	
} else {

	hsp = 0;
	vsp = 0;
	
}

// Move
//green variables are built-in variables, such as x and y (position)
// sprite_index returns the sprite name
// We have seperate move variable in case we collide with something, this way we don't have to move our position back, etc.

x += hsp;
y += vsp;