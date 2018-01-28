var xx = x;
var yy = y;
var nn = name;
var o_id = id;
with(oHuman){
	if(o_id == id) continue;
	var mem_id = concat("human_", name);
	var dist = point_distance(x, y, xx, yy);
	
	//get value
	var cur_strength;
	if(!ds_map_exists(o_id.memory, mem_id)){
		if(dist > familiar_space){
			continue;
		}else{
			cur_strength = 0;
		}
	}else{
		cur_strength = ds_map_find_value(o_id.memory, mem_id);
	}
	
	//familiarity
	if(dist < familiar_space){
		cur_strength += familiar_rate;
	}else{
		cur_strength += forget_rate;
	}
	cur_strength = clamp(cur_strength, 0, 1);
	ds_map_replace(o_id.memory, mem_id, cur_strength);
}