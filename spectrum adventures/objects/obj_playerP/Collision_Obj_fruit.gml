/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
global.puntos += 500;
global.bono = true;

audio_play_sound(Snd_eatfruit,10,0);
with(other){instance_destroy();}