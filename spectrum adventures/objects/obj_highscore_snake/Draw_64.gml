draw_set_font(fnt_menu);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_text(160,40,"Score: " + string(score))
draw_text(360,40, "Highscore: " + string(global.highscore));