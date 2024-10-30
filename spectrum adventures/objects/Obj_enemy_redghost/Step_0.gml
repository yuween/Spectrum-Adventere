if(global.golpe){
	speed = 0;
	vspeed = 0;
	hspeed = 0;
	visible = false;
	
	x = xstart;
	y = ystart;
	exit;
}else{
	visible = true;
}

if(!global.poder){
	if place_snapped(64,64){
		if hspeed == 0 {
			if random(3) < 1 && place_free(x-1,y){
				hspeed = -velocity;
				vspeed = 0;
				sprite_index = Spr_redghost_left;
			}
			if random(3) < 1 && place_free(x+1,y){
				hspeed = velocity;
				vspeed = 0;
				sprite_index = Spr_redghost_right;
			}
		}else{
			if random(3) < 1 && place_free(x,y-1){
				hspeed = 0;
				vspeed = -velocity;
				sprite_index = Spr_redghost_up;
			}
			if random(3) < 1 && place_free(x,y+1){
				hspeed = 0;
				vspeed = velocity;
				sprite_index = Spr_redghost_down;
			}
		}
	}
}