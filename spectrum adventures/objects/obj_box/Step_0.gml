// Step Event of obj_box
// Apply gravity to the box's vertical speed
y_speed += y_gravity * fall_multiplier;

// Damping
x_speed *= x_damping;
y_speed *= y_damping;

// Move the box horizontally based on player interaction
var player = instance_place(x, y, obj_player_platformer);
if (player != noone) {
    // Calculate distance to player
    var distance_to_player = player.x - x;

    // If the distance is less than the push_distance, push the box away
    if (abs(distance_to_player) < push_distance) {
        if (distance_to_player < 0) {
            x_speed = push_distance - abs(distance_to_player); // Push right
        } else {
            x_speed = -(push_distance - abs(distance_to_player)); // Push left
        }
    }
}

// Move the box horizontally
var _dx = sign(x_speed);
repeat(abs(x_speed)) {
    if (!place_meeting(x + _dx, y, obj_solid_parent)) {
        x += _dx; // Move the box
    } else {
        x_speed = 0; // Stop horizontal movement if hitting a wall
        break;
    }
}

// Move the box vertically based on gravity
var _dy = sign(y_speed);
repeat(abs(y_speed)) {
    if (!place_meeting(x, y + _dy, obj_solid_parent)) {
        y += _dy; // Move the box
    } else {
        y_speed = 0; // Stop vertical movement if hitting the ground
        break;
    }
}

// Reset vertical speed if the box is on the ground
if (place_meeting(x, y + 1, obj_solid_parent)) {
    y_speed = 0; // Reset vertical speed if on the ground
}

// Wrap around the room
if (x < 0) x += room_width;
if (x > room_width) x -= room_width;
if (y < 0) y += room_height;
if (y > room_height) y -= room_height;