/// @desc Clock

event_inherited();

cannonKnockback = 0;
cannonFrame = 0;
cannonAnimating = true;
cannonNumFrames = sprite_get_number(sLaserCannonEnemy);
shootWaitTimer = 30;
cannonAnimationSpd = 0.5;

rotationSpd = 5;
rotationCurrent = random(360);
rotationTarget = rotationCurrent;
amountOfCannons = 2;



