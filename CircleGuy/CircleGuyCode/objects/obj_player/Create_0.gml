audio_stop_sound(snd_menu);
audio_stop_sound(snd_win);
audio_stop_sound(snd_lose);
audio_play_sound(snd_background, 1, true, .4);

score = 0;
max_hp = 5;
curr_hp = max_hp;
spd = 3.75;
atk = 1;

//player invincibility frames
iframe = true;
i_delay = room_speed * .6;

//shoot delay
can_shoot = true;
shoot_delay = room_speed * .6;

