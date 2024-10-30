/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (sprite_index == Spr_Pplayer_dies){
	direction = 0;
	image_speed = 0;
	x = xstart;
	y = ystart;
	sprite_index = Spr_Pplayer_right;
	image_index = 0;
	
	global.golpe = false;
	
	audio_play_sound(Snd_beginning,10,0);
	instance_deactivate_object(Obj_enemy_blueghost);
	instance_deactivate_object(Obj_enemy_redghost);
	instance_deactivate_object(Obj_enemy_orangeghost);
	instance_deactivate_object(Obj_enemy_pinkghost);
}