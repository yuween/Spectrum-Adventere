// Toggle between fullscreen on and off when the object is clicked
if (position_meeting(mouse_x, mouse_y, id)) {
	global.fullscreen = !global.fullscreen; // Toggle the state
}

// Toggle fullscreen mode
if global.fullscreen = true {
    window_set_fullscreen(true); // Turn on fullscreen
} else {
    window_set_fullscreen(false); // Turn off fullscreen
}
