
ini_open("phighscore.ini");
ini_read_real("highscore", "best", global.best_time);
ini_close();

    if (global.time_taken < global.best_time) {
        // New best time
        global.best_time = global.time_taken;
        
        // Save the new high score in the INI file
        ini_open("phighscore.ini");
        ini_write_real("highscore", "best", global.best_time);
        ini_close();
        show_message("New Best Time: " + string(global.best_time) + " seconds!");
    } else if (global.time_taken >= global.best_time){
        show_message("Time: " + string(global.time_taken) + " seconds. Best Time: " + string(global.best_time) + " seconds.");
    }

