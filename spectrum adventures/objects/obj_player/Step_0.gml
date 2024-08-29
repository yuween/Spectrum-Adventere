right_key = keyboard_check(global.right_key);
left_key = keyboard_check(global.left_key);
up_key = keyboard_check(global.up_key);
down_key = keyboard_check(global.down_key);

xspd = (right_key - left_key) * move_speed;
yspd = (down_key - up_key) * move_speed;

x += xspd;
y += yspd;