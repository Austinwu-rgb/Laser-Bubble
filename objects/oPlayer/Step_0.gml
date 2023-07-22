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


#region shoot

cannonDir = point_direction(x, y, mouse_x, mouse_y); 

if (mouse_check_button(mb_left)) {	
	if (--shootTimer <= 0) {
		//Create Laser
		/*Whatever you put inside the with statement, the following code will be SCOPED to the object or instance.
		this is why we have to use "other.cannonDir" to refer to cannonDir outside. 
		*/
		
		with(instance_create_layer(x + lengthdir_x(20, cannonDir), y + lengthdir_y(20, cannonDir), "Laser", oLaserBeam)) {
			image_angle = other.cannonDir;
		}
		
		//Knockback
		hsp -= lengthdir_x(3, cannonDir);
		vsp -= lengthdir_y(3, cannonDir); 
		cannonKnockback = 6;
		
		//Shoot Timer
		shootTimer = 6;
	}	
} else {
	shootTimer = 0;
	//this way if you release mouse, it won't still be at 6 timer
}

#endregion


// Move
//green variables are built-in variables, such as x and y (position)
// sprite_index returns the sprite name
// We have seperate move variable in case we collide with something, this way we don't have to move our position back, etc.

x += hsp;
y += vsp;

//Deal with these values
cannonKnockback = Approach(cannonKnockback, 0, 1);