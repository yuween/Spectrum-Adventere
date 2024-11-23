// obj_options - Step Event
if (keyboard_check_pressed(vk_escape)) {
    // Go back to the start screen
    instance_create_layer(0, 0, "Instances", obj_startscreen); // Create the start screen
    instance_destroy(obj_fullscreen);
	instance_destroy(obj_fullscreen_circle);
	instance_destroy(obj_slider_bar);
	instance_destroy(obj_slider_knob);
	instance_destroy(obj_controls)
		instance_destroy(obj_reset)
	instance_destroy();// Close the options screen
}