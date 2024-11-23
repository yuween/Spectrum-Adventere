if !instance_exists(obj_pachighscore){
	instance_create_layer(room_width/2, room_height/2, "GUI", obj_pachighscore);
}

audio_play_sound(snd_portal,1,false);