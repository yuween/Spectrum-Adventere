randomize();
var i = instance_create_layer(room_width + 100, room_height-175 + irandom_range(-200, 100), "Instances", obj_cloud);

if (global.bday)
{
	i.sprite_index = spr_balloon;	
}

if (global.gameOver) exit;

alarm[1] = room_speed * random_range(3/global.speedModifier, 6/global.speedModifier);