if(info_key_to_update != ""){
	humanEnterState(HUMAN_STATE.informing);
	with(pathing_goal){
		humanEnterState(HUMAN_STATE.listening);
	}
}else{
	humanEnterState(HUMAN_STATE.wandering);
}