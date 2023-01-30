if (hp <= 0) {
	instance_destroy();
	obj_wave_controller.enemies_left--;
	effect_create_above(ef_explosion, x, y, 1, c_dkgray);
}

if(global.game_state == states.playing && instance_exists(obj_player) && can_move){
	move_towards_point(obj_player.x, obj_player.y, spd);
}
else{
	move_towards_point(self.x, self.y, 0);
}

if(can_shoot && can_move){
	can_shoot = false;
	audio_play_sound(snd_shot, 7, false);
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet_enemy);
	bullet.atk = atk;
	bullet.direction = point_direction(x, y, obj_player.x, obj_player.y);
	bullet.speed = bullet.spd;
	
	alarm[0] = shoot_delay;
}
