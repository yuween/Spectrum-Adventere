// Smooth transition between on and off states
if fullscreen = true {
    toggle_state = lerp(toggle_state, 1, transition_speed); // Transition towards "on"
} else {
    toggle_state = lerp(toggle_state, 0, transition_speed); // Transition towards "off"
}