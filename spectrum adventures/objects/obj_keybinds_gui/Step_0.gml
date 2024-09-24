if (!changing_key) {
    // Handle cycling through key options
    if (keyboard_check_pressed(vk_down)) {
        current_selection += 1;
        if (current_selection >= menu_length) {
            current_selection = 0;
        }
    }

    if (keyboard_check_pressed(vk_up)) {
        current_selection -= 1;
        if (current_selection < 0) {
            current_selection = menu_length - 1;
        }
    }
}
// Press ESC to return to the previous menu
if (keyboard_check_pressed(vk_escape)) {
    instance_destroy();
	instance_create_layer(0, 0, "Instances", obj_options);
	instance_create_layer(room_width/2, 150, "Instances", obj_slider_bar);
	instance_create_layer(0, 0, "InstancesAbove", obj_slider_knob);
	instance_create_layer(room_width/2 + 25, 212, "Instances", obj_fullscreen);
	instance_create_layer(room_width/2, 300, "Instances", obj_controls);
	// Close the keybind GUI
}

if (keyboard_check_pressed(vk_enter)) {
    switch (current_selection) {
        case 0: key_to_change = "up"; break;
        case 1: key_to_change = "down"; break;
        case 2: key_to_change = "left"; break;
        case 3: key_to_change = "right"; break;
        case 4: key_to_change = "interact"; break;
    }
    changing_key = true;  // Set state to change the key
}

if (changing_key) {
    if (keyboard_lastkey != vk_enter && keyboard_lastkey != -1) {  // Ignore Enter key
        // Assign the new key to the corresponding global keybind
        switch (key_to_change) {
            case "up": global.up_key = keyboard_lastkey; break;
            case "down": global.down_key = keyboard_lastkey; break;
            case "left": global.left_key = keyboard_lastkey; break;			
            case "right": global.right_key = keyboard_lastkey; break;
            case "interact": global.interact_key = keyboard_lastkey; break;
        }
        changing_key = false;  // Stop key changing mode
    }
}
