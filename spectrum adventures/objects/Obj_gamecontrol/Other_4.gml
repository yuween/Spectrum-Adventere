/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if room == room_pacman exit;
audio_play_sound(Snd_beginning,10,0);
instance_deactivate_object(Obj_enemy_blueghost);
instance_deactivate_object(Obj_enemy_orangeghost);
instance_deactivate_object(Obj_enemy_pinkghost);
instance_deactivate_object(Obj_enemy_redghost);
global.poder = false;
global.golpe = false;
global.bono = false;
alarm[0] = room_speed*10;
alarm[0] = room_speed*10;