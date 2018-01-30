//check through needs
var all_needs_met = true;
for(var i = 0; i < ds_list_size(oPersistent.needs); i++){
	var cur_need = oPersistent.needs[| i];
	var need_name = cur_need[? "name"];
	var can_satisfy = ds_map_exists(memory, need_name);
	var time_since_previous = 100000000000;
	if(ds_map_exists(memory, concat("previous_",need_name))){
		time_since_previous = oPersistent.game_time - memory[? concat("previous_",need_name)];
	}
	if(can_satisfy && time_since_previous > cur_need[? "refresh_steps"]){
		humanEnterState(HUMAN_STATE.deprived, need_name);
		all_needs_met = false;
	}
}
if(all_needs_met){
	humanEnterState(HUMAN_STATE.wandering);	
}