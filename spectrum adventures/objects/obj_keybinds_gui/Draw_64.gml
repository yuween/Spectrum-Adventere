draw_self();
_x = room_width / 2;
displacement = 150;

// Display title
draw_text(_x, 100, "Current Keybinds:");

draw_set_halign(fa_left);

// Function to get the key name
function get_key_name(_key) {
    switch (_key) {
        case vk_up: return "Up Arrow";
        case vk_down: return "Down Arrow";
        case vk_left: return "Left Arrow";
        case vk_right: return "Right Arrow";
        case vk_space: return "Space";
        case vk_enter: return "Enter";
        default: return chr(_key);
    }
}

// Highlight the current selection
var highlight_color = c_yellow;
draw_set_color(c_white);

// Move Up
if (current_selection == 0) draw_set_color(highlight_color);
draw_text(_x-displacement, 150, "Move Up: " + get_key_name(global.up_key));
draw_set_color(c_white);

// Move Down
if (current_selection == 1) draw_set_color(highlight_color);
draw_text(_x-displacement, 180, "Move Down: " + get_key_name(global.down_key));
draw_set_color(c_white);

// Move Left
if (current_selection == 2) draw_set_color(highlight_color);
draw_text(_x-displacement, 210, "Move Left: " + get_key_name(global.left_key));
draw_set_color(c_white);

// Move Right
if (current_selection == 3) draw_set_color(highlight_color);
draw_text(_x-displacement, 240, "Move Right: " + get_key_name(global.right_key));
draw_set_color(c_white);

// Interact Key
if (current_selection == 4) draw_set_color(highlight_color);
draw_text(_x-displacement, 270, "Interact: " + get_key_name(global.interact_key));
draw_set_color(c_white);

if (current_selection == 5) draw_set_color(highlight_color);
draw_text(_x-displacement, 300, "Action: " + get_key_name(global.action_key));
draw_set_color(c_white);

draw_set_halign(fa_center);

// Instructions depending on state
if (!changing_key) {
    draw_text(_x, 350, "Press Enter to change a key.");
    draw_text(_x, 380, "Use Up/Down to navigate, ESC to return.");
} else {
    draw_text(_x, 350, "Press any key to rebind " + key_to_change + ".");
}
