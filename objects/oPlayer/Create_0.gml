/// @desc Player Variable


/*
normal variables are accessible by all events in the object. 
Using keyword "var" is only in the event and is temporary. 
Using global.myvarname is accessible globally in the project. 

var _temp = 0;

	Using #region and #endregion creates a section of code you can collapse. you can also name the region such as "#region myRegion"
*/

//Movement 
hsp = 0;
vsp = 0;
moveSpd = 3;

//Cannon
cannonDir = 0;
cannonKnockback = 0;
shootTimer = 0;

//State 
dead = false;
flash = 0;

//Health
hp = 8;
maxHp = hp;







