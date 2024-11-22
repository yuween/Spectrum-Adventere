// Draw Event of obj_player (or any other object that displays the GUI)
draw_text(x, y, "Time: " + string(global.ltime_taken) + "s");
if (global.lhighscore != -1) {
    draw_text(x, y-40, "Best Time: " + string(global.lhighscore) + "s");
}
