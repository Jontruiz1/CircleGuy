obj_player.max_hp += 1;
obj_player.curr_hp++;
audio_play_sound(snd_powerup, 10, false);
instance_destroy();