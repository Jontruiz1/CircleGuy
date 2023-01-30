
draw_self();

draw_set_color(c_lime);
draw_text(100, 100, "Score: " + string(score));
if(global.game_state == states.paused){
	draw_sprite(spr_pause, image_index, 100, 100);
	audio_sound_gain(snd_background, .5, 0);
}
else{
	audio_sound_gain(snd_background, 1, 0);
}

for(i = 0; i < curr_hp; i++) {
	draw_sprite(spr_heart, 0,32 + (32 * i),32);
}