if(curr_hp <= 0){
	audio_play_sound(snd_death, 2, false);
	room_goto(room_game_over);
	
}
if(obj_wave_controller.enemies_left == 0){
	can_shoot = false;
	alarm[0] = room_speed;
}