// obj_startscreen - Step Event
if (!option_selected) {
    // Handle menu navigation
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

    if (keyboard_check_pressed(vk_enter)) {
        option_selected = true;
        switch (current_selection) {
            case 0: // Start the game
				TransitionStart(room_game, sqFadeOut, sqFadeIn); 
                break;
            case 1: // Open Options
                instance_create_layer(0, 0, "Instances", obj_options);
				instance_create_layer(room_width/2, 150, "Instances", obj_slider_bar);
				instance_create_layer(0, 0, "InstancesAbove", obj_slider_knob);
				instance_create_layer(room_width/2 + 25, 212, "Instances", obj_fullscreen);
				instance_create_layer(room_width/2, 260, "Instances", obj_controls);
				instance_create_layer(room_width/2, 320, "Instances", obj_reset);
				
                instance_deactivate_object(self); // Deactivate main menu while showing options
                break;
            case 2: // Open Credits
                room_goto(room_credits);
				audio_play_sound(credit,1,true);
        }
    }
}
