switch(sub_state){
case 0: //just reached partner
	//if partner isn't interested, wait a while
	print(name,sub_state);
	if(path_complete){
		var partner = memory[? "mating"];
		var partner_busy;
		with(partner){
			partner_busy = humanIsBusy() && partner.state != HUMAN_STATE.mating;
		}
		if(partner_busy){
				var refresh_steps = 0;
				//ideally this structure will be refactored at some point so that I don't need a loop
				for(var i = 0; i < ds_list_size(oPersistent.needs); i++){
					var need = oPersistent.needs[| need_index]; 
					if(need[? "name"] == "mating"){
						refresh_rate = need[? "refresh_steps"];	
					}
				}
				
				memory[? "previous_mating"] = oPersistent.game_time - (refresh_steps * .75);
				
				humanEvaluatePriorities();
		}else{
			if(partner.state != HUMAN_STATE.mating){
				with(partner) humanEnterState(HUMAN_STATE.mating);
			}
			sub_state++;
			humanStartPathToObject(partner);
			path_sp = sp_max * .25;
		}
	}
	break;
case 1: //at closest point
	print(name,sub_state);
	if(path_complete){
		sub_state++;
		if(id > memory[? "mating"]){
			var center_x = (x + memory[? "mating"].x)/2;
			var center_y = (y + memory[? "mating"].y)/2;
			instance_create_depth(center_x, center_y, depth+1, oHuman);
		}
		memory[? "previous_mating"] = oPersistent.game_time;
	}
	break;
case 2://waiting on partner to reach closest point
	print(name,sub_state);
	var partner = memory[? "mating"];
	if(partner.state != HUMAN_STATE.mating || partner.sub_state == 2){
		humanStartPathToObject(partner);
		path_sp = -.25 * sp_max;
		sub_state++;
	}else{
		human_dx = 0;
		human_dy = 0;
	}
	break;
case 3://break apart
	print(name,sub_state);
	if(path_complete){
		humanEvaluatePriorities();
	}
}