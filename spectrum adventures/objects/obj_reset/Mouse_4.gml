if position_meeting(mouse_x, mouse_y, obj_reset) {
    // Reset global variables
    global.dinohighscore = 0;
    global.pachighscore = 0;
    global.best_time = 9999;
    global.lhighscore = 9999;
    global.bhighscore = 0;

    // Reset dinohighscore
    ini_open("dino.ini");
    ini_write_real("dino", "ini", global.dinohighscore);
    ini_close();

    // Reset best_time
    ini_open("phighscore.ini");
    ini_write_real("highscore", "best", global.best_time);
    ini_close();

    // Reset pachighscore
    ini_open("pachighscore.ini");
    ini_write_real("highscore", "pacman", global.pachighscore);
    ini_close();

    // Reset Lock highscore
    ini_open("Lock.ini");
    ini_write_real("Lock", "Highscore", global.lhighscore);
    ini_close();

    // Reset breakthrough highscore
    ini_open("breakthroughhighscore.ini");
    ini_write_real("break", "through", global.bhighscore);
    ini_close();
    
    // Debug message to confirm reset
    show_debug_message("INI files reset successfully.");
}
