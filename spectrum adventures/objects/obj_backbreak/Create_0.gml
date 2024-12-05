if global.backbreak = true{
	instance_create_layer(obj_breakthrough_portal.x - 50,  obj_breakthrough_portal.y, "Instances", obj_player);
	global.backbreak = false;
}
else{
	instance_create_layer(220, 20, "Instances", obj_player);
}