room_goto(rm_game);
if score>global.dinohighscore
{
	ini_open("dino.ini");
	ini_write_real("dino","ini",score);
	ini_close()
}
score=0;

audio_play_sound(snd_click,1,false);

audio_stop_sound(snd_gameover);