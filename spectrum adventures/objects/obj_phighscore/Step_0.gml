// Title centered

draw_set_halign(fa_center);
draw_set_color(c_white); // Set text color
draw_text(_x, _y - 110, "Welcome to Platformer Game!");

x = _x
y = _y

draw_set_halign(fa_left);
if (global.best_time != -1) {
    draw_text(_x - 180, _y - 70, "Best Time: " + string(global.best_time) + " seconds");
} else {
    draw_text(_x - 180, _y - 70, "Best Time: Not Set");
}

// Objectives
draw_text(_x - 180, _y - 30, "Objectives:");
draw_text(_x - 160, _y - 10, "- Reach the portal at the end of the level.");
draw_text(_x - 160, _y + 10, "- Avoid obstacles and enemies.");

// Controls
draw_text(_x - 180, _y + 50, "Controls:");
draw_text(_x - 160, _y + 70, "- Move: Arrow keys or WASD");
draw_text(_x - 160, _y + 90, "- Dash: Press [Space] or Action button");

// Footer centered
draw_set_halign(fa_center);
draw_text(_x, _y + 160, "Press [Enter] to Start or [Escape] to Exit");