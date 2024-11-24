if keyboard_check_pressed(ord("A")) dir=state.left;
if keyboard_check_pressed(ord("D")) dir=state.right;
if keyboard_check_pressed(ord("W")) dir=state.up;
if keyboard_check_pressed(ord("S")) dir=state.down;

if dir==state.left
{
	x-=move_size;
	image_angle=180;
}
if dir==state.right
{
	x+=move_size;
	image_angle=0;
}
if dir==state.up
{
	y-=move_size;
	image_angle=90;
}
if dir==state.down
{
	y+=move_size
	image_angle=270;
}