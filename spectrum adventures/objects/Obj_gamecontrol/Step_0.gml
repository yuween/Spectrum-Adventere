/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !(audio_is_playing(Snd_beginning)){
	instance_activate_object(Obj_enemy_blueghost);
	instance_activate_object(Obj_enemy_redghost);
	instance_activate_object(Obj_enemy_pinkghost);
	instance_activate_object(Obj_enemy_orangeghost);
}

if (global.vidas == 0){
	if global.puntos >= global.pachighscore{
		global.pachighscore = global.puntos
		ini_open("pachighscore.ini");
		ini_write_real("highscore", "pacman", global.pachighscore);
		ini_close();
	}
		
	with(Obj_enemy_redghost){instance_destroy();}
	with(Obj_enemy_blueghost){instance_destroy();}
	with(Obj_enemy_orangeghost){instance_destroy();}
	with(Obj_enemy_pinkghost){instance_destroy();}
	with(obj_playerP){instance_destroy();}
	with(Obj_powerpoint){instance_destroy();}
	with(Obj_point){instance_destroy();}
	with(Obj_fruit){instance_destroy();}
	room_goto(room_game);
	
}

if(instance_number(Obj_point) == 0 && instance_number(Obj_powerpoint) == 0 && global.vidas != 0){
		audio_stop_all();
		room_goto(room_game);
		instance_destroy();
}