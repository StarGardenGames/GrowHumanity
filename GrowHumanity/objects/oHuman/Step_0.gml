event_inherited();

fadeSpawnUpdate();

humanUpdateThought();

humanUpdateRelationships();

if(pathing){
	humanPath();	
}else{
	if(state_map[? "update_script"] != undefined){
		script_execute(state_map[? "update_script"]);
	}
	path_complete = false;
	state_timer--;
}

humanMove();

stimulation = max(stimulation - stimulation_decel, 0);