audio_stop_sound(snd_background);

ini_open("Save1.ini");
if(score > global.highscore){
	global.highscore = score;
	ini_write_real("Save1","highscore", global.highscore);
}
ini_close();

if(global.win == true){
	audio_play_sound(snd_win, 1, false);
}
else{
	audio_play_sound(snd_lose, 1, false);
}