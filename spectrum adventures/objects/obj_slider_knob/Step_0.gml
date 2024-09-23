
if (mouse_check_button_pressed(mb_left) and point_in_rectangle(mouse_x, mouse_y, x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2)) {
    dragging = true;
}
if (mouse_check_button_released(mb_left)) {
    dragging = false;
}


if (dragging) {
    x = clamp(mouse_x, min_x, max_x);
}


global.volume = (x - min_x) / (max_x - min_x);


audio_master_gain(global.volume);
