alarm[0]=room_speed*10;
if score>global.modernhighscore
{
	ini_open("highscore.ini");
	ini_write_real("save","highscore",score);
	ini_close()
}