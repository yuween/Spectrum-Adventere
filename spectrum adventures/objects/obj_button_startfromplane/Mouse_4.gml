game_set_speed(60,gamespeed_fps)
TransitionStart(room_snakeworld, sqFadeOut, sqFadeIn);

audio_play_sound(snd_click,1,false);

audio_stop_sound(snd_gameover);