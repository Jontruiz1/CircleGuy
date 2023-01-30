//waves 
wave = 1;
enemies_left = 3;
enemies_to_spawn = enemies_left;
global.win = false;

//arrays for powerups and enemies
power_ups[3] = obj_fire_rate_up;
power_ups[2] = obj_attack_up;
power_ups[1] = obj_health_up;
power_ups[0] = obj_speed_up;

enemies[0] = obj_enemy_blue;
enemies[1] = obj_enemy_red;
enemies[2] = obj_enemy_green;
enemies[3] = obj_enemy_purple;
enemies[4] = obj_enemy_black;


//drawing wave number
draw_wave_num = true;
alarm[0] = room_speed * 1.5;