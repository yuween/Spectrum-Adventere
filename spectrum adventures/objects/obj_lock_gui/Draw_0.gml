// Draw Event of obj_player (or any other object that displays the GUI)
draw_text(x, y-60, "Time: " + string(global.ltime_taken) + "s");
if (global.lbest_time != -1) {
    draw_text(x, y-40, "Best Time: " + string(global.lbest_time) + "s");
}
