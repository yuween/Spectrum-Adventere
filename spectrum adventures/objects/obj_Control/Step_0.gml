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
		            global.player_score = 0;
		            global.player_lives = 10;
		            room_goto(room_breakthroughlose);
		            }
		        }
		    }