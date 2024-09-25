// Step Event of obj_pressure_plate
// Check for collisions with obj_box
if (place_meeting(x, y, obj_box)) {
    if (!box_on_plate) {
        box_on_plate = true; // Set flag to true if box is now on the plate
        image_index = 1; // Change the image index to indicate pressure
        
        // Create the instance of obj_solid_platformer_appear
        platform_instance = instance_create_layer(600, 400, "Instances", obj_solid_platformer_appear);
        platform_instance.image_xscale = 5; // 96 / 32 = 3
        platform_instance.image_yscale = 1; // No change in height
	}
} else {
    if (box_on_plate) {
        box_on_plate = false; // Set flag to false if box is no longer on the plate
        image_index = 0; // Reset the image index
        
        // Destroy the instance of obj_solid_platformer_appear if it exists
        if (platform_instance != noone) {
            instance_destroy(platform_instance);
            platform_instance = noone; // Reset the variable
        }
    }
}
