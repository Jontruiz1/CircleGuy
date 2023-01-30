ini_open("Save1.ini");
global.highscore = ini_read_real("Save1","highscore", 0);
ini_close();

audio_play_sound(snd_menu, 1, true);
audio_stop_sound(snd_win);
audio_stop_sound(snd_lose);