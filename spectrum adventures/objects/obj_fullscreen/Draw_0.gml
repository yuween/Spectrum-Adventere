// Draw the correct sprite for the button (on or off)
draw_self();

// Move the circle smoothly based on the toggle state
var circle_x_off = obj_fullscreen.x - sprite_width/2 + 18; //spr_fullscreen_circle.sprite_width /2; 
var circle_x_on = obj_fullscreen.x + sprite_width/2 - 18;//spr_fullscreen_circle.sprite_width /2;  

var circle_x_pos = lerp(circle_x_off, circle_x_on, toggle_state);

// Draw the circle
draw_sprite(spr_fullscreen_circle, 0, circle_x_pos, y);