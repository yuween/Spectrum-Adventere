// Draw Event of obj_player (or any other object that displays the GUI)
draw_text(10, 10, "Time: " + string(global.time_taken) + "s");
if (global.best_time != -1) {
    draw_text(10, 30, "Best Time: " + string(global.best_time) + "s");
}
