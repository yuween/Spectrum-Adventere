//if player is not talking to npc, he can move
if instance_exists(obj_textbox){
	global.talking = true;
}
else if !instance_exists(obj_textbox){
	global.talking = false;
}

right_key = keyboard_check(global.right_key);
left_key = keyboard_check(global.left_key);
up_key = keyboard_check(global.up_key);
down_key = keyboard_check(global.down_key);
interact_key = keyboard_check(global.interact_key)

inputDirection = point_direction(0, 0, right_key - left_key, down_key - up_key);
inputMagnitude = (right_key - left_key != 0) || (down_key - up_key != 0);

hSpeed = lengthdir_x(inputMagnitude * move_speed, inputDirection);
vSpeed  = lengthdir_y(inputMagnitude * move_speed, inputDirection);

if inputMagnitude != 0
{
	image_speed = 1;
}
else
{
	image_speed = 0;
}

// Horizontal Collision Handling
if (place_meeting(x + hSpeed, y, obj_collision)) {
    while (!place_meeting(x + sign(hSpeed), y, obj_collision)) {
        x += sign(hSpeed);
    }
    hSpeed = 0;
}

// Vertical Collision Handling
if (place_meeting(x, y + vSpeed, obj_collision)) {
    while (!place_meeting(x, y + sign(vSpeed), obj_collision)) {
        y += sign(vSpeed);
    }
    vSpeed = 0;
}

if global.talking = false {
	x += hSpeed;
	y += vSpeed;
}


if global.talking = false {
	if keyboard_check(global.right_key){
		sprite_index = spr_player_right
	}
	else if keyboard_check(global.left_key){
		sprite_index = spr_player_left
	}
	else if keyboard_check(global.up_key){
		sprite_index = spr_player_up
	}
	else if keyboard_check(global.down_key){
		sprite_index = spr_player_down
	}
}