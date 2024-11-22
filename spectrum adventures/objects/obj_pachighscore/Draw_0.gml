// Title centered
draw_self();

var _x = global.camx
var _y = global.camy


draw_set_halign(fa_center);
draw_set_font(fnt_platformer);
draw_set_color(c_white); // Set text color
draw_text(_x, _y - 110/ _z, "Welcome to PACMAN!");

draw_set_halign(fa_left);
if (global.best_time != -1) {
    draw_text(_x - 180/ _z, _y - 70/ _z, "Best Score: " + string(global.pachighscore) + " Points");
} else {
    draw_text(_x - 180/ _z, _y - 70/ _z, "Best Score: Not Set");
}

// Objectives
draw_text(_x - 180/ _z, _y - 30/ _z, "Objectives:");
draw_text(_x - 160/ _z, _y - 10/ _z, "- Collect all the points!");
draw_text(_x - 160/ _z, _y + 10/ _z, "- Avoid the ghosts!");
draw_text(_x - 160/ _z, _y + 30/ _z, "- Eat POWERUPS to eat the ghosts!");

// Controls
draw_text(_x - 180/ _z, _y + 70/ _z, "Controls:");
draw_text(_x - 160/ _z, _y + 90/ _z, "- Move: WASD Keys");

// Footer centered
draw_set_halign(fa_center);
draw_text(_x, _y + 160/ _z, "Press [Enter] to Start or [Backspace] to Exit");