// Move the dialog box into view using lerp
if (is_active) {
    y = lerp(y, target_y, 0.1);  // Smoothly move it to the target position
}

// Handle player input for selecting options
if (keyboard_check_pressed(vk_up)) {
    selected_option -= 1;
    if (selected_option < 0) selected_option = array_length(options) - 1; // Loop to last option
}

if (keyboard_check_pressed(vk_down)) {
    selected_option += 1;
    if (selected_option >= array_length(options)) selected_option = 0; // Loop back to first option
}

// Handle selection (confirm with Enter key)
if (keyboard_check_pressed(vk_enter)) {
    switch (selected_option) {
        case 0: show_debug_message("Yes option selected"); break;
        case 1: show_debug_message("No option selected"); break;
        case 2: show_debug_message("Maybe option selected"); break;
    }

    // Destroy the dialog box after selection
    instance_destroy();
}
