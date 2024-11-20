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
					if global.player_score >= global.bhighscore{
						global.bhighscore = global.player_score
						ini_open("breakthroughhighscore.ini");
						ini_write_real("break","through",global.bhighscore)
						ini_close();
					}
		            room_goto(room_breakthroughlose);
		            }
		        }
		    }