// Title centered
draw_self();

var _x = global.camx
var _y = global.camy


draw_set_halign(fa_center);
draw_set_font(fnt_platformer);
draw_set_color(c_white); // Set text color
draw_text(_x, _y - 110/ _z, "Welcome to Platformer Game!");

draw_set_halign(fa_left);
if (global.best_time != -1) {
    draw_text(_x - 180/ _z, _y - 70/ _z, "Best Time: " + string(global.best_time) + " seconds");
} else {
    draw_text(_x - 180/ _z, _y - 70/ _z, "Best Time: Not Set");
}

// Objectives
draw_text(_x - 180/ _z, _y - 30/ _z, "Objectives:");
draw_text(_x - 160/ _z, _y - 10/ _z, "- Reach the portal at the end of the level.");
draw_text(_x - 160/ _z, _y + 10/ _z, "- Avoid obstacles and enemies.");

// Controls
draw_text(_x - 180/ _z, _y + 50/ _z, "Controls:");
draw_text(_x - 160/ _z, _y + 70/ _z, "- Move: Arrow keys or WASD");
draw_text(_x - 160/ _z, _y + 90/ _z, "- Dash: Press [Space] or Action button");

// Footer centered
draw_set_halign(fa_center);
draw_text(_x, _y + 160/ _z, "Press [Enter] to Start or [Escape] to Exit");