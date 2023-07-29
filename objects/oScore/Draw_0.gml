/// @desc Draw Score

draw_set_font(fScore);
//text align like in microsoft word (fa_middle is used for vertical, fa_center is used for horizontal)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);

draw_set_alpha(image_alpha);
draw_text(x, y-(1-image_alpha)*3, amount);
draw_set_alpha(1);







