alarm[0]=room_speed*10;
if score>global.traditionalhighscore
{
	ini_open("traditionalhighscore.ini");
	ini_write_real("saves","highscores",score);
	ini_close()
}