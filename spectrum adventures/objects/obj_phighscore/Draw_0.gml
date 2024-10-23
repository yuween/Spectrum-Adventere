_x = global.camx
_y = global.camy

draw_self(); // Draw the object itself

// Set alignment, font, and color
draw_set_halign(fa_center);
draw_set_font(fnt_platformer);
draw_set_color(c_white);

// Define your zoom level (replace this with your actual zoom variable)
var zoom_level = 2; // Example: 2x zoom; adjust based on your actual zoom

// Title text centered within the viewport, adjusted for zoom
draw_text(_x, _y - (80 / zoom_level), "Welcome to Platformer Game!");

// Left-align for other texts
draw_set_halign(fa_left);

// Best time text, adjusted for zoom
if (global.best_time != -1) {
    draw_text(_x - (120 / zoom_level), _y - (40 / zoom_level), "Best Time: " + string(global.best_time) + " seconds");
} else {
    draw_text(_x - (120 / zoom_level), _y - (40 / zoom_level), "Best Time: Not Set");
}

// Objectives section, adjusted for zoom
draw_text(_x - (120 / zoom_level), _y + (0 / zoom_level), "Objectives:");
draw_text(_x - (100 / zoom_level), _y + (20 / zoom_level), "- Reach the portal at the end of the level.");
draw_text(_x - (100 / zoom_level), _y + (40 / zoom_level), "- Avoid obstacles and enemies.");

// Controls section, adjusted for zoom
draw_text(_x - (120 / zoom_level), _y + (80 / zoom_level), "Controls:");
draw_text(_x - (100 / zoom_level), _y + (100 / zoom_level), "- Move: Arrow keys or WASD");
draw_text(_x - (100 / zoom_level), _y + (120 / zoom_level), "- Dash: Press [Space] or Action button");

// Footer text centered within the viewport, adjusted for zoom
draw_set_halign(fa_center);
draw_text(_x, _y + (160 / zoom_level), "Press [Enter] to Start or [Escape] to Exit");
