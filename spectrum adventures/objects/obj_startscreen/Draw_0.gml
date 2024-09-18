draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(room_width/2, 130, "Spectrum Adventures");

draw_set_font(fnt_menu); // Set your preferred font

// Loop through the menu options
for (var i = 0; i < menu_length; i++) {
    var y_position = top_position_y + (i * selection_y_offset);

    if (i == current_selection) {
        // Draw the selected option with a different font size or bold
        draw_set_color(c_white);
        draw_set_alpha(1); // Full opacity
        draw_text(room_width / 2, y_position, menu_options[i]);
    } else {
        // Unselected options faded
        draw_set_color(c_white);
        draw_set_alpha(fade_alpha); // Faded effect
        draw_text(room_width / 2, y_position, menu_options[i]);
    }
}

// Reset alpha and color after drawing
draw_set_alpha(1); // Full opacity again
draw_set_color(c_white);