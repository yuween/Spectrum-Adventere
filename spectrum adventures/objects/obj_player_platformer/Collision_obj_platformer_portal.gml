// Collision Event between obj_portal and obj_player
if (place_meeting(x, y, obj_platformer_portal)) {
    // Player reached the portal, stop the timer
    var player_time = global.time_taken;

    // Check if this is the best time
    if (global.best_time != -1 || player_time > global.best_time) {
        // New best time
        global.best_time = player_time;
        
        // Save the new high score in the INI file
        ini_open("phighscore.ini");
        ini_write_real("highscore", "best", global.best_time);
        ini_close();
        
        show_message("New Best Time: " + string(global.best_time) + " seconds!");
    } else {
        show_message("Time: " + string(player_time) + " seconds. Best Time: " + string(global.best_time) + " seconds.");
    }

    // Reset the level or go to the next one
    // room_restart(); // Example for restarting the room
}
