/// @desc Lock Mouse

if (window_has_focus()) {	
	display_mouse_lock(window_get_x(), window_get_y(), window_get_width(), window_get_height());
}

else display_mouse_unlock();
