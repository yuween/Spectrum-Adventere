if (distance_to_object(obj_player) < 50 && keyboard_check_pressed(vk_space)) {
    if (!instance_exists(obj_textbox)) {
        instance_create_layer(0, display_get_height(), "GUI", obj_textbox);
    }
}

