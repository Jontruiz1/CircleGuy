//enemy spawning
if(enemies_to_spawn > 0){
	enemy_x = irandom_range(135, 1070);
	enemy_y = irandom_range(50, 730);
	
	//if the enemies x and y position is within a circle around the player it'll find new coordinates
	while(power((enemy_x - obj_player.x), 2) + power((enemy_y - obj_player.y), 2) < power(125, 2)){
		enemy_x = irandom_range(135, 1070);
		enemy_y = irandom_range(50, 730);
	}
	
	//randomly chooses an enemy from the list of enemies and spawns it
	instance_create_layer(enemy_x, enemy_y, "Instances", enemies[irandom(wave-1)]);
	enemies_to_spawn--;
}

//wave handling, checks if any enemies left, if not, goes to next wave
if(enemies_left == 0){
	//win if wave == 6
	if(++wave == 6) {
		global.win = true;
		if(not browser_not_a_browser){
			room_goto(room_win_html);
		}
		else{
			room_goto(room_win);
		}
	}
	draw_wave_num = true;
	alarm[0] = room_speed * 1.5;
	//handles powerup spawning 
	instance_create_layer(irandom_range(100, 1075), irandom_range(30, 750), "Instances", power_ups[irandom(array_length_1d(power_ups) - 1)]);
	
	enemies_left = wave*3 + 1;
	enemies_to_spawn = enemies_left;
}








