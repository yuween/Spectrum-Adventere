if y < 60 y = 60;
if y > 540 y = 540;


// Prevent moving if key is being pressed
if !keyboard_check(ord("W")) or !keyboard_check(ord("S"))
{
	if y < flying_level y += 2;
	if y > flying_level y -= 2;
}

if x>520 and x<4250
	if y=540 or y=60
	{
		room_goto(room_lose);
	}
	
if x=4800
	if y > 420
	{
		room_goto(room_world2)
	}
	