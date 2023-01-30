if(obj_player.curr_hp < obj_player.max_hp){
	obj_player.curr_hp++;
	score += 25;
	audio_play_sound(snd_life, 5, false);
	instance_destroy();
}