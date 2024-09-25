var _direction = 0;

// Check if both keys are pressed
if (keyboard_check(global.left_key) && keyboard_check(global.right_key)) {
    _direction = 0; // Both keys are pressed
}
// Check if only the right key is pressed
else if (keyboard_check(global.right_key)) {
    _direction = 1; // Moving right
}
// Check if only the left key is pressed
else if (keyboard_check(global.left_key)) {
    _direction = -1; // Moving left
}

x_speed += x_acceleration * _direction;
if (_direction != 0) x_last_direction = _direction;

if keyboard_check_pressed(global.action_key){
	x_speed += x_dash_impulse*x_last_direction;
}

if (keyboard_check_pressed(global.up_key) && instance_place(x, y+3, obj_solid_platformer)) {
	y_speed += y_jump_impulse;
}

y_speed += y_gravity

x_speed *= x_damping;
y_speed *= y_damping;

var _dx  = sign(x_speed);
repeat(abs(x_speed))
{
	if (!place_meeting(x + _dx, y, obj_solid_platformer))
    {
        x += _dx;
    }
    else
    {
        x_speed = 0;
        break;
    }
}

//Move in the y-axis using the old school granny step method
var _dy = sign(y_speed);
repeat(abs(y_speed))
{
    if (!place_meeting(x, y + _dy, obj_solid_platformer))
    {
        y += _dy;
    }
    else
    {
        y_speed = 0;
        break;
    }
}

//Wrap around the room in case the player falls off of the level
if (x < 0) x += room_width;
if (x > room_width) x -= room_width;
if (y < 0) y += room_height;
if (y > room_height) y -= room_height;


