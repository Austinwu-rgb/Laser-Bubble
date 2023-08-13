/// @desc Draw Title

draw_sprite(sTitle, 0, room_width/2, room_height/2-10);

draw_set_font(fTitle);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(room_width/2, room_height/2+94, "Press Enter to Start"); 