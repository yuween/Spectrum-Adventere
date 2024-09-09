// Draw the stretched background sprite
draw_self();

// Draw the options inside the dialog box
var option_y = y + 50; // Start drawing options 50 pixels down from the top of the box
for (var i = 0; i < array_length(options); i++) {
    if (i == selected_option) {
        draw_set_color(c_yellow);  // Highlight the selected option
    } else {
        draw_set_color(c_white);   // Non-selected options remain white
    }
    draw_text(50, option_y, options[i]);  // Draw each option with padding
    option_y += 30;  // Space options vertically by 30 pixels
}
draw_set_color(c_white); // Reset the color after drawing
