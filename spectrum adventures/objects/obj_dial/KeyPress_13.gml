if (!unlocked)
{
	index++;
	
	if (index > 2)
		index = 0;
		
	var equal = ds_list_find_value(matches, 0) == ds_list_find_value(values, 0)
		&& ds_list_find_value(matches, 1) == ds_list_find_value(values, 1)
		&& ds_list_find_value(matches, 2) == ds_list_find_value(values, 2)
		
	if (equal)
	{
		unlocked = true;
		audio_play_sound(snd_unlock, 100, false);
		TransitionStart(room_game, sqFadeOut, sqFadeIn);
	}
}