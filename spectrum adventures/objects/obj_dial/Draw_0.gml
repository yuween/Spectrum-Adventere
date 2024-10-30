draw_self();
draw_sprite(spr_indicator, 0, x, y - (sprite_height/2) - 10);

draw_set_halign(fa_left);
draw_set_color(c_white);

var xx = 10; 
var yy = 10;
for (var i = 0; i < 3; i++)
{
	if (ds_list_find_value(values, i) < 10)
	{
		draw_text(xx, yy, "0" + string(ds_list_find_value(values, i)));	
	}
	else
	{
		draw_text(xx, yy, ds_list_find_value(values, i));	
	}
	
	xx += 30;
}

if (index == 0)
{
	draw_line(5, 33, 29, 33);	
}
else if (index == 1)
{
	draw_line(35, 33, 59, 33);	
}
else
{
	draw_line(65, 33, 89, 33);	
}

var xx = room_width - 100;
var yy = 10;
for (var i = 0; i < 3; i++)
{
	if (ds_list_find_value(matches, i) < 10)
	{
		draw_text(xx, yy, "0" + string(ds_list_find_value(matches, i)));	
	}
	else
	{
		draw_text(xx, yy, ds_list_find_value(matches, i));	
	}
	
	xx += 30;
}

if (unlocked)
{
	draw_set_halign(fa_center);
	draw_text(room_width/2, room_height - 50, "SUCCESS! VAULT DOOR OPENED!");
}