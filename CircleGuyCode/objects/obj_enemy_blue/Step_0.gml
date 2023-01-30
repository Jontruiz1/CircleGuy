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



