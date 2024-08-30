right_key = keyboard_check(global.right_key);
left_key = keyboard_check(global.left_key);
up_key = keyboard_check(global.up_key);
down_key = keyboard_check(global.down_key);
interact_key = keyboard_check(global.interact_key)

inputDirection = point_direction(0, 0, right_key - left_key, down_key - up_key);
inputMagnitude = (right_key - left_key != 0) || (down_key - up_key != 0);

hSpeed = lengthdir_x(inputMagnitude * move_speed, inputDirection);
vSpeed  = lengthdir_y(inputMagnitude * move_speed, inputDirection);

x += hSpeed;
y += vSpeed;