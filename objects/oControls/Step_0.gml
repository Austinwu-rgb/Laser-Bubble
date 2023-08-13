/// @desc Control Logic

visible = !global.title;

if (!global.title) {
	if (oPlayer.shootTimer > 0) {
		shot = true;
	} else if (oPlayer.hsp != 0 or oPlayer.vsp != 0) {
		moved = true;
	}
	if (shot and moved) instance_destroy();
}





