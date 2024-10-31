/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Centered on camera position
var cam_center_x = global.pcamx;
var cam_center_y = global.pcamy;

// Draw score in top-left relative to the camera
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_font(fnt_pacman);
draw_text(cam_center_x - 448, cam_center_y - 222, "SCORE: " + string(global.puntos));

// Draw lives at the top-center relative to the camera
draw_text(cam_center_x, cam_center_y - 222, "LIVES: ");
for (var i = 0; i < global.vidas; i++) {
    draw_sprite_stretched(Spr_Pplayer_right, 3, cam_center_x + string_width("LIVES: ") + (i * 33), cam_center_y - 240, 32, 32);
}

// Draw "Ready!" message if beginning sound is playing
if (audio_is_playing(Snd_beginning)) {
    draw_set_color(c_yellow);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_font(fnt_pacman);
    draw_text(cam_center_x + 35, cam_center_y, "Ready!");
}

// Draw cherry bonus at the top-right relative to the camera
if (global.bono) {
    draw_sprite(spr_cherry, 0, cam_center_x + 448 - 64, cam_center_y - 270);
}

// Draw "Game Over" message if lives are 0
if (global.vidas == 0) {
    draw_set_color(c_red);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_font(fnt_pacman);
    draw_text(cam_center_x + 35, cam_center_y, "Game Over");
}
