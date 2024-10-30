//Movimientos
if (global.golpe)||audio_is_playing(Snd_beginning) exit;

if keyboard_check(vk_right) && place_free(x+1,y) && place_snapped(32,32){
	direction = 0;
	speed = velocity;
}

if keyboard_check(vk_left) && place_free(x-1,y) && place_snapped(32,32){
	direction = 180;
	speed = velocity;
}

if keyboard_check(vk_up) && place_free(x,y-1) && place_snapped(32,32){
	direction = 90;
	speed = velocity;
}

if keyboard_check(vk_down) && place_free(x,y+1) && place_snapped(32,32){
	direction = 270;
	speed = velocity;
}

if speed > 0 {
	image_speed = 1;
}else{
	image_speed = 0;
	image_index = 0;
}

switch(direction){
	case 0:sprite_index = Spr_Pplayer_right;
	break;
	case 90:sprite_index = Spr_Pplayer_up;
	break;
	case 180:sprite_index = Spr_Pplayer_left;
	break;
	case 270:sprite_index = Spr_Pplayer_down;
	break;
}