if score>global.dinohighscore
{
	ini_open("dino.ini");
	ini_write_real("dino","ini",score);
	ini_close()
}