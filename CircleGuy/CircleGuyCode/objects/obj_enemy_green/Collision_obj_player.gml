

if(global.game_state == states.playing && obj_player.iframe){
	audio_play_sound(snd_damage, 2, false);
	obj_player.iframe = false;
	obj_player.curr_hp -= atk;
	if(score > 0) score -= 50;
	obj_player.alarm[1] = obj_player.i_delay;
}