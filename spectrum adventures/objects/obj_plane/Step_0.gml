if y < 60 y = 60;
if y > 540 y = 540;


// Prevent moving if key is being pressed
if !keyboard_check(ord("W")) or !keyboard_check(ord("S"))
{
	if y < flying_level y += 2;
	if y > flying_level y -= 2;
}

	
if x=4800
	if y > 420
	{
		room_goto(room_platformerworld)
	}
	
if x < 2400 {
	_speed += acceleration
}
else {
	_speed -= acceleration
}

x += _speed

if _speed < 1
{
	_speed = 1;
}

	
