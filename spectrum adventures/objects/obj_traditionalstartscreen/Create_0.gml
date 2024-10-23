ini_open("traditionalhighscore.ini");
global.traditionalhighscore=ini_read_real("saves","highscores",0)
ini_close();
score = 0