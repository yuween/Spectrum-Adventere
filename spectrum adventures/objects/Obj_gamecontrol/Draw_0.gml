/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_font(fnt_pacman);

draw_text(32,48,"SCORE: "+string(global.puntos));

draw_text(room_width/2, 48, "LIVES: ");
for (var i = 0; i < global.vidas ;i++){
	draw_sprite_stretched(Spr_Pplayer_right, 3, room_width/2+string_width("LIVES: ")+(i*33), 16, 32, 32);
}

if (audio_is_playing(Snd_beginning)){
	draw_set_color(c_yellow);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_pacman);
	draw_text(room_width/2+35, room_height/2, "Ready!")
}

if(global.bono){draw_sprite(spr_cherry,0,room_width-64,0)}

if(global.vidas == 0){
	draw_set_color(c_red);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_pacman);
	draw_text(room_width/2+35, room_height/2, "Game Over")
}