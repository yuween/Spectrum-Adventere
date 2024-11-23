if (distance_to_object(obj_player) < 10 && keyboard_check_pressed(global.interact_key)) {
   audio_play_sound(snd_villager,1,false);
   if (!instance_exists(obj_textbox)) {
        startDialogue("Centre")
    }
}

if (distance_to_object(obj_player) < 10 && global.talking = false) {
	image_index = 1;
}
else
{
	image_index = 0;
}
