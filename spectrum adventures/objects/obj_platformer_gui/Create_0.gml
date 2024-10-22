
global.time_taken = 0; // Time counter
global.level_start_time = current_time; // Store the starting time

ini_open("phighscore.ini");
ini_read_real("highscore", "best", global.best_time);
ini_close();
