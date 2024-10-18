if global.time = 0
{
	game_end();
}
if global.timer = -1
{
	TransitionStart(room_start, sqFadeOut, sqFadeIn);
}