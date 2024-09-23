// Smooth transition between on and off states
if global.fullscreen = true {
    toggle_state = lerp(toggle_state, 1, transition_speed); // Transition towards "on"
	image_index = 1;
} else {
    toggle_state = lerp(toggle_state, 0, transition_speed); // Transition towards "off"
	image_index = 0;
}

