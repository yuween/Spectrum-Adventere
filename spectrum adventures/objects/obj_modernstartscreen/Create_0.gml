ini_open("highscore.ini");
global.modernhighscore=ini_read_real("save","highscore",0)
ini_close();
score = 0