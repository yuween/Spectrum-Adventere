ini_open("highscore.ini");
global.traditionalhighscore=ini_read_real("save","highscore",0)
ini_close();
score = 0