if(global.game_state == states.playing && room != room_menu){
	global.game_state = states.paused;
}
else if(global.game_state == states.paused){
	 global.game_state = states.playing;
}

