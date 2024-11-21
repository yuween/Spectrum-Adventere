if (global.gameOver) exit;

jumpKey = !global.inverse ? keyboard_check_pressed(vk_space) : keyboard_check_pressed(vk_down);
jumpKeyAlt = !global.inverse ? keyboard_check_pressed(vk_up) : keyboard_check_pressed(vk_alt);
duckKey = !global.inverse ? keyboard_check(vk_down) : keyboard_check(vk_space);
duckKeyAlt = !global.inverse ? keyboard_check(vk_alt) : keyboard_check(vk_up);

ducking = duckKey || duckKeyAlt;
jumping = !(duckKey && duckKeyAlt);

if (place_meeting(x, y + 1, obj_bblock))
{
	// we're touching the ground
	vspd = 0;
	jumping = false;
	falling = false;
    ducking = duckKey || duckKeyAlt;
		
	// if the player wants to jump
	if (jumpKey || jumpKeyAlt && !duckKey && !duckKeyAlt)
	{
		jumping = true;
		vspd = -jspd;
	}
}
else
{
	if (ducking)
	{
		vspd += grav * 4;	
	}
	else
	{
		if (vspd < termVelocity)
			vspd += grav;
			
		if (sign(vspd) == 1)
			falling = true;
	}
}

falling = jumping && vspd > 0;
jumping = jumping && vspd < 0
	
if (place_meeting(x, y + vspd, obj_bblock))
{
	while (!place_meeting(x, y+sign(vspd), obj_bblock))
	{
		y += sign(vspd);	
	}
	
	vspd = 0;
}

y += vspd;

if (jumping || falling)
	sprite_index = global.bday ? spr_dino_stand_bday : spr_dino_stand;

if (ducking)
{
	sprite_index = global.bday ? spr_dino_duck_bday : spr_dino_duck;
	image_speed = 2;
}

if (!jumping && !falling && !ducking)
{
	sprite_index = global.bday ? spr_dino_run_bday : spr_dino_run;
	image_speed = 2;
}