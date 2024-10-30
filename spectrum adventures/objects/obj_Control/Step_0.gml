		/// @description Check Room Restart
		if instance_number(obj_Brick) <= 0
		    {
		    room_restart();
		    }
		else
		    {
		    if state == "GAMEOVER"
		        {
		        if keyboard_check(vk_anykey)
		            {
					ini_open("breakthroughhighscore.ini");
					global.player_score=ini_read_real("break","through",0)
					ini_close();
		            global.player_lives = 10;
		            room_goto(room_breakthroughlose);
		            }
		        }
		    }