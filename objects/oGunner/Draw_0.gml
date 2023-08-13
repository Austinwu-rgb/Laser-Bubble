/// @desc Draw Gunner

draw_self();
draw_sprite_ext(sLaserCannonEnemy, cannonFrame, x+lengthdir_x(28-cannonKnockback, playerDir), y+lengthdir_y(28-cannonKnockback, playerDir), 1, 1, playerDir, c_white, 1);

HealthBar(x, bbox_top-4, hp/maxHp);