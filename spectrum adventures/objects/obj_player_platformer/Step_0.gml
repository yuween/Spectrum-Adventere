// Step Event of obj_player_platformer
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

// Update horizontal speed
x_speed += x_acceleration * _direction;
if (_direction != 0) x_last_direction = _direction;

// Dash functionality
if (keyboard_check_pressed(global.action_key)) {
    x_speed += x_dash_impulse * x_last_direction;
}

// Jump functionality
if (keyboard_check_pressed(global.up_key) && (place_meeting(x, y + 2, obj_solid_parent) || place_meeting(x, y + 1, obj_box))) {
    y_speed += y_jump_impulse; // Jump if on the ground or on the box
}

// Apply gravity
y_speed += y_gravity;

// Apply damping
x_speed *= x_damping;
y_speed *= y_damping;

// Move in the x-axis
var _dx = sign(x_speed);
repeat(abs(x_speed)) {
    if (!place_meeting(x + _dx, y, obj_solid_parent) && !place_meeting(x + _dx, y, obj_box)) {
        x += _dx; // Move the player
    } else {
        // Collision correction
        while (place_meeting(x + _dx, y, obj_solid_parent) || place_meeting(x + _dx, y, obj_box)) {
            x -= _dx; // Step back until there's no collision
        }
        x_speed = 0; // Stop horizontal movement if hitting a wall or box
        break;
    }
}

// Move in the y-axis using the old school granny step method
var _dy = sign(y_speed);
repeat(abs(y_speed)) {
    if (!place_meeting(x, y + _dy, obj_solid_parent)) {
        y += _dy; // Move the player
    } else {
        // Collision correction
        while (place_meeting(x, y + _dy, obj_solid_parent)) {
            y -= _dy; // Step back until there's no collision
        }
        y_speed = 0; // Stop vertical movement if hitting the ground
        break;
    }
}

// Check if landing on top of the box
if (place_meeting(x, y + 1, obj_box) && y_speed >= 0) {
    var box = instance_place(x, y + 1, obj_box);
    if (box != noone) {
        // Land on the box
        y = box.y - sprite_height; // Position the player on top of the box
        y_speed = 0; // Reset vertical speed
    }
} else {
    // Check collision with the box for pushing
    if (place_meeting(x + _dx, y, obj_box)) {
        var box = instance_place(x + _dx, y, obj_box);
        if (box != noone && !place_meeting(x, y + 1, obj_box)) { // Prevent box from moving if player is on top
            box.x += _dx; // Push the box
        }
    }
}

// Wrap around the room in case the player falls off of the level
if global.checkpoint = 0

switch global.checkpoint
{ 
	case 0:
		cp = obj_checkpoint0;
	break;
	
	case 1:
		cp = obj_checkpoint1;
	break;
	
	case 2:
		cp = obj_checkpoint2;
	break;
	
	case 3:
		cp = obj_checkpoint3;
	break;
}

var _x = cp.x 
var _y = cp.y
if (y < 0){
	x = _x
	y = _y
}