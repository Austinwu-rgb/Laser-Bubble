/// @desc Change Alpha

//The alpha variable actually doesn't affect anything directly, it is just like any other variable. The actual alpha is changed is the draw_set_alpha() function.

image_alpha -= 0.02;

if (image_alpha <= 0) instance_destroy();

