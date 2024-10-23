draw_set_font(fnt_menu);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_text(x,y+60,"Score: " + string(score))
draw_text(x,y+40, "Highscore: " + string(global.modernhighscore));