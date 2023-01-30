draw_self();
draw_set_color(c_lime);
audio_stop_sound(snd_background);

if(global.win == false){
	draw_sprite(spr_game_over, image_index, 600, 200);
} 
else{
	draw_sprite(spr_win, image_index, 600, 200);
}

draw_text(600, 500, "Score: " + string(score));
draw_text(600, 520, "High-score: " + string(global.highscore));