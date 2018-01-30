if(path_complete){
	humanEmitEmotion(EMOTION.informing);
	with(path_goal){
		humanEnterState(HUMAN_STATE.listening);
	}
	path_complete = false;
}else if(!instance_exists(my_emotion)){
	var key = info_key_to_update;
	var val = memory[? info_key_to_update];
	var lead = lead_informant;
	with(path_goal){
		humanGetInformed(key, val, lead);
	}
	humanPickHumanToInform();
}
human_dx = 0;
human_dy = 0;