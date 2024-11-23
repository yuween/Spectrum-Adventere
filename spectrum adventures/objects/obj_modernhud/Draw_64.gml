draw_set_font(fnt_menu);
draw_set_colour(c_black);
draw_set_halign(fa_center);
draw_text(100,60,"Score: " + string(score))
draw_text(100,30, "Highscore: " + string(global.modernhighscore));