/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
audio_play_sound(Snd_beginning,10,0);
instance_deactivate_object(Obj_enemy_blueghost);
instance_deactivate_object(Obj_enemy_redghost);
instance_deactivate_object(Obj_enemy_pinkghost);
instance_deactivate_object(Obj_enemy_orangeghost);
global.puntos = 0;
global.vidas = 3;
global.poder = false;
global.bono = false;
global.golpe = false;

alarm[0] = room_speed*10;
alarm[0] = room_speed*20;