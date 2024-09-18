// obj_credits - Step Event
if (keyboard_check_pressed(vk_escape)) {
    // Go back to the start screen
    instance_create_layer(0, 0, "Instances", obj_startscreen); // Create the start screen
    instance_destroy(); // Close the options screen
}