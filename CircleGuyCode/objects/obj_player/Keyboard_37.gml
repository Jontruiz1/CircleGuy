if(global.game_state == states.playing && can_shoot) {
	audio_play_sound(snd_shot, 4, false);
	can_shoot = false;
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet_player);
	bullet.atk = atk;
	bullet.direction = point_direction(x, y, 0, y);
	bullet.speed = bullet.spd;
	
	alarm[0] = shoot_delay;
}
