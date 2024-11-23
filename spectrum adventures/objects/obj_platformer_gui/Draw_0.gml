// Draw Event of obj_player (or any other object that displays the GUI)
draw_text(x, y-40, "Time: " + string(global.time_taken) + "s");
if (global.best_time != 9999) {
    draw_text(x, y-60, "Best Time: " + string(global.best_time) + "s");
}

draw_text(x, y-80, "Press ESC to exit")