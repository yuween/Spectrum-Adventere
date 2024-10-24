

// Display Highscore
if instance_exists(follow)
{
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x) / 15;
y += (yTo - y) / 15;

x = clamp(x, _x, room_width - _x);
y = clamp(y, _y, room_height - _y);

camera_set_view_pos(cam, x - _x, y- _y);

global.camx = x;
global.camy = y;