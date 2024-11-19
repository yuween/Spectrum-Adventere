// Title centered
draw_self();

var _x = global.camx
var _y = global.camy


draw_set_halign(fa_center);
draw_set_font(fnt_platformer);
draw_set_color(c_white); // Set text color
draw_text(_x, _y - 110/ _z, "Welcome to Breakthrough!");

draw_set_halign(fa_left);
if (global.best_time != -1) {
    draw_text(_x - 180/ _z, _y - 70/ _z, "Best Score: " + string(global.bhighscore) + " Points");
} else {
    draw_text(_x - 180/ _z, _y - 70/ _z, "Best Score: Not Set");
}

// Objectives
draw_text(_x - 180/ _z, _y - 30/ _z, "Objectives:");
draw_text(_x - 160/ _z, _y - 10/ _z, "- Break all bricks!");
draw_text(_x - 160/ _z, _y + 10/ _z, "- Don't let the ball touch the bottom!");

// Controls
draw_text(_x - 180/ _z, _y + 50/ _z, "Controls:");
draw_text(_x - 160/ _z, _y + 70/ _z, "- Move: Left and Right Arrow Keys");
draw_text(_x - 160/ _z, _y + 90/ _z, "- Send ball: Press [Space] or Action button");

// Footer centered
draw_set_halign(fa_center);
draw_text(_x, _y + 160/ _z, "Press [Enter] to Start or [Backspace] to Exit");