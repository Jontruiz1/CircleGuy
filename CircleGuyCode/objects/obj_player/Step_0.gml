if(curr_hp <= 0){
	audio_play_sound(snd_death, 2, false);
	
	if(not browser_not_a_browser){
		room_goto(room_game_over_html);
	}
	else{
		room_goto(room_game_over);
	}
}
if(obj_wave_controller.enemies_left == 0){
	can_shoot = false;
	alarm[0] = room_speed;
}