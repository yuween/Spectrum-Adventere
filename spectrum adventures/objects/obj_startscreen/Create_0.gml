// obj_startscreen - Create Event
if !audio_is_playing(Carried_Away){
	audio_play_sound(Carried_Away, 0, true);
}

menu_options = ["Start", "Options", "Credits"];
current_selection = 0;
menu_length = array_length(menu_options);
selection_y_offset = 50;
top_position_y = 200;

fade_alpha = 0.5;         // Alpha for unselected options
default_scale = 1;        // Normal size
selected_scale = 1.5;     // Larger size for the selected option
move_speed = 8;           // Speed of panning

option_selected = false; // Variable to manage option selection state
