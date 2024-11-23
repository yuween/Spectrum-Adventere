function scr_handleOrientation() {
	image_angle = image_angle % 360;

	if (image_angle < 0)
		image_angle += 360;

	if (image_angle == 100)
		image_angle = 0;	

	if (ds_list_find_index(matches, round(image_angle/degrees)) == index)
	{
	}
	else
	{
	}

	ds_list_replace(values, index, round(image_angle/degrees));
	
	delay = true;
	alarm[0] = room_speed * 0.08;


}
