/// @desc Enemy Basics

/*
	By default, children (such as this pEnemy) will use the events of the parent (pCollider), however,
	if we want to add code to an event that is specific to the child and not the parent, we need to override the
	parent event. Adding an event in the child object will automatically override the parent, however, in doing so,
	the parent event will be deleted from the child object in doing so, therefore, we need to call the parent event
	explicitly using event_inherited() if we want to use it. 
*/

event_inherited();


// Enemy
playerDir = 0;
maxHp = hp;
//flash helps change the color to white when the enemey is hit
flash = 0; 

knockback = 0;
knockbackDir = 0;



