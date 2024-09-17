if (distance_to_object(obj_player) < 10 && keyboard_check_pressed(global.interact_key)) {
    if (!instance_exists(obj_textbox)) {
        startDialogue("Breakfast")
    }
}

if (distance_to_object(obj_player) < 10 && global.talking = false) {
	image_index = 1;
}
else
{
	image_index = 0;
}
