draw_set_font(fnt_menu);
draw_set_colour(c_orange);
draw_text(175, 25, "AD Left: " + string(global.wait) + " Seconds");

draw_healthbar(25, 50, 325, 75, global.wait/15*100, 
$FFFFFFFF & $FFFFFF, $FF56FF8E & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), 
(($FFFFFFFF>>24) != 0));