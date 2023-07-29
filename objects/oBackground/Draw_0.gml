/// @desc Draw Background

//Bubbles
for(var i = 0; i < array_length(bubbles); i++) {
	draw_sprite(sBackgroundBubbles, bubbles[i].subimg, bubbles[i].x, bubbles[i].y)
}

// Score

var _col = #0E0E33;
draw_set_font(fScoreBackground);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(_col);

//string_format to make sure that there's always 4 digits for the score
//string_replace_all to replace all of the spaces with 0s
draw_text_transformed(room_width/2, room_height/2-20, string_replace_all(string_format(global.score, 4, 0), " ", "0"), 3.5, 3.5, 0);

// Healthbar
var _healthbarY = room_height/2 + 48;
var _healthbarWidth = 120;
var _healthbarHeight = 12;

draw_sprite(sBackgroundHealthBar, 0, room_width/2, _healthbarY);

if (oPlayer.hp > 0) {
	draw_set_color(merge_color(_col, c_white, oPlayer.flash));
	
	//draw_rectangle is sometimes 1 pixel off, which is why we use -1 at the end
	//We do *2-1 at the end since we do healthbarwidth/2, therefore we need to double it
	draw_rectangle(room_width/2-_healthbarWidth/2, _healthbarY-_healthbarHeight/2,
		room_width/2+(_healthbarWidth/2-1)*(oPlayer.hp/oPlayer.maxHp*2-1), _healthbarY+_healthbarHeight/2-1, false);
	
}
