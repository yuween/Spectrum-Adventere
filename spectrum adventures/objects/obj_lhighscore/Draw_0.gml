// Title centered
draw_self();

var _x = global.camx
var _y = global.camy


draw_set_halign(fa_center);
draw_set_font(fnt_platformer);
draw_set_color(c_white); // Set text color
draw_text(_x, _y - 110/ _z, "Welcome to Lock!");

draw_set_halign(fa_left);
if (global.lbest_time != -1) {
    draw_text(_x - 180/ _z, _y - 70/ _z, "Best Time: " + string(global.lbest_time) + " seconds");
} else {
    draw_text(_x - 180/ _z, _y - 70/ _z, "Best Time: Not Set");
}

// Objectives
draw_text(_x - 180/ _z, _y - 30/ _z, "Objectives:");
draw_text(_x - 160/ _z, _y - 10/ _z, "- Match the numbers on the top right!");
draw_text(_x - 160/ _z, _y + 10/ _z, "- Spin the dial and ENTER your code!");

// Controls
draw_text(_x - 180/ _z, _y + 50/ _z, "Controls:");
draw_text(_x - 160/ _z, _y + 70/ _z, "- Turn: Arrow Keys");
draw_text(_x - 160/ _z, _y + 90/ _z, "- Confirm: Press [ENTER]");

// Footer centered
draw_set_halign(fa_center);
draw_text(_x, _y + 160/ _z, "Press [Enter] to Start or [Backspace] to Exit");