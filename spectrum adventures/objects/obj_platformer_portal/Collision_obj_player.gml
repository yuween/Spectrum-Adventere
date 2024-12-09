if !instance_exists(obj_phighscore){
	instance_create_layer(room_width/2, room_height/2, "UP", obj_phighscore);
}

if !audio_is_playing(snd_portal){
	audio_play_sound(snd_portal,1,false);
}