//generate search for closest uninformed person
var min_dist = -1;
var target_human = noone;
var lead = lead_informant;
with(oHuman){
	if(ds_map_exists(lead.informed_set, id)) continue;
	var dist = point_distance(other.x, other.y, x, y);
	if(target_human == noone || dist < min_dist){
		min_dist = dist;
		target_human = id;
	}
}

//go to human if I found one, else find something else
if(instance_exists(target_human)){
	humanEnterState(HUMAN_STATE.informing, target_human);	
}else{
	info_key_to_update = "";
	humanEvaluatePriorities();
}

