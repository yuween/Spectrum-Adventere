// Draw Event of obj_player (or any other object that displays the GUI)
draw_text(x, y-60, "Time: " + string(global.time_taken) + "s");
if (global.best_time != -1) {
    draw_text(x, y-40, "Best Time: " + string(global.best_time) + "s");
}
