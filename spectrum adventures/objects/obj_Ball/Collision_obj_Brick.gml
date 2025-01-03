		/// @description Destroy Brick
		var _dir = direction - 180; // Get the direction back along the way the ball moved
		while (place_meeting(x, y, other)) // This loop will only run while a collision is detected
		    {
		    // Move the ball back along the direction it came from until no collision is detected
		    x += lengthdir_x(1, _dir);
		    y += lengthdir_y(1, _dir);
		    }
		move_bounce_all(true); // Set the bounce angle
		if speed < 100 speed += 0.2; // Make the ball faster
		global.player_score += 15; // Add to the score
		instance_destroy(other); // Destroy the "other" object in the collision, ie: the brick
