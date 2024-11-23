if (other.object_index == obj_cake)
{
	global.bday = true;
	with (other)
	{
		instance_destroy();
	}
	
	return;
}

if (other.object_index == obj_inverse)
{
	global.inverse = !global.inverse;
	with (other)
	{
		instance_destroy();
	}
		
	return;
}

// otherwise a death object
	
global.gameOver = true;
global.speedModifier = 0;
image_speed = 0;
grav = 0;
	
if (global.bday)
{
	sprite_index = spr_dino_dead_bday;
}
else
{
	sprite_index = spr_dino_dead;
}

if (!instance_exists(obj_replay))
	audio_play_sound(snd_gameover,1,true);
	instance_create_layer(room_width/2, room_height/2 + 50, "Instances", obj_replay);
	instance_create_layer(room_width/2, room_height/2 + 50, "Instances", obj_dinohighscore);
	instance_create_layer(room_width/2, room_height/2 + 150, "Instances", obj_button_airport);
		
with (obj_obstacle)
{
	speed = 0;
	image_speed = 0;	
}