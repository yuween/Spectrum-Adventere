draw_set_font(fnt_menu);
draw_set_colour(c_black);
draw_text(540, 475, "Verification Time Left: " + string(global.time) + " Seconds");

draw_healthbar(570, 500, 870, 525, global.time/10*100, 
$FFFFFFFF & $FFFFFF, $FF56FF8E & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), 
(($FFFFFFFF>>24) != 0));
