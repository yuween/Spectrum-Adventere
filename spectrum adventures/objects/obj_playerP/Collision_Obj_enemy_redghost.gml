/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (other.sprite_index == Spr_ghost_scared){
	global.puntos += 200;
	audio_play_sound(Snd_eatghost,10,0);
	with(other){
		x = xstart;
		y = ystart;
		speed = 4;
		sprite_index = Spr_redghost_up;
	}
}else if !(global.golpe) && (x = other.x || y = other.y){
	audio_stop_all();
	audio_play_sound(Snd_death,10,0);
	speed = 0;
	global.vidas -= 1;
	sprite_index = Spr_Pplayer_dies;
	image_speed = 0.5;
	global.golpe = true;
}
