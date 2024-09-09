// Set the dialog box position
x = 0; // Start at the left of the screen
y = display_get_height(); // Start off-screen at the bottom

// Target position for sliding in the dialog box
target_y = display_get_height() - 150;

// Set the target width (full screen) and height (150 pixels)
box_width = display_get_width();
box_height = 150;

// Assign the sprite and scale it to fit the dialog box
sprite_index = spr_text;
image_xscale = box_width / sprite_width;   // Stretch the sprite horizontally
image_yscale = box_height / sprite_height; // Stretch the sprite vertically

// Dialog options for the player
options = ["Yes", "No", "Maybe"];
selected_option = 0; // Start with the first option selected

// Flag to check if the dialog is active
is_active = true;

