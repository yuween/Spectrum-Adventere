if position_meeting(mouse_x, mouse_y, obj_controls) {
    instance_create_layer(x, y, "GUI", obj_keybinds_gui); // Create the GUI for keybinding
	instance_destroy(obj_fullscreen);
	instance_destroy(obj_fullscreen_circle);
	instance_destroy(obj_slider_bar);
	instance_destroy(obj_slider_knob);
	instance_destroy(obj_options);
	instance_destroy();
}

