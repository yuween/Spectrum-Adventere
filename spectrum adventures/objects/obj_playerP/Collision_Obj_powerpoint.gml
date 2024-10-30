/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
audio_play_sound(Snd_chomp,10,0);
alarm[0] = room_speed*5;

global.puntos += 50;
global.poder = true;
with(Obj_enemy_blueghost){
	sprite_index = Spr_ghost_scared;
	image_speed = 0;
	image_index = 0;
	velocity = 2;
	speed = 2;
}
with(Obj_enemy_orangeghost){
	sprite_index = Spr_ghost_scared;
	image_speed = 0;
	image_index = 0;
	velocity = 2;
	speed = 2;
}
with(Obj_enemy_pinkghost){
	sprite_index = Spr_ghost_scared;
	image_speed = 0;
	image_index = 0;
	velocity = 2;
	speed = 2;
	}
with(Obj_enemy_redghost){
	sprite_index = Spr_ghost_scared;
	image_speed = 0;
	image_index = 0;
	velocity = 2;
	speed = 2;
}
with(other){instance_destroy();}