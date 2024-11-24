audio_play_sound(snd_click,1,false);

audio_stop_sound(snd_gameover);

if global.room = 1{
	TransitionStart(room_world2, sqFadeOut, sqFadeIn);
}
else if global.room = 2{
	TransitionStart(room_world3, sqFadeOut, sqFadeIn);
}
else if global.room = 3{
	TransitionStart(room_platformerworld, sqFadeOut, sqFadeIn);
}
else if global.room = 4{
	TransitionStart(room_snakeworld, sqFadeOut, sqFadeIn);
}