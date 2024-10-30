degrees = 3.6;
image_angle = 0;
index = 0;
values = ds_list_create();
ds_list_add(values, 0, 0, 0);
matches = ds_list_create();
x = room_width/2;
y = room_height/2;
delay = false;
unlocked = false;

randomize();

var found = 0;
while (found < 3)
{
	var n = irandom_range(0, 99);
	if (ds_list_find_index(matches, n) == -1)
	{
		ds_list_add(matches, n);
		found++;
	}
}