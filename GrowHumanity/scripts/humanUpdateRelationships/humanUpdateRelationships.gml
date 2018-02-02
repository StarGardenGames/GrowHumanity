var xx = x;
var yy = y;
var main_id = id;

//find new aquiantances
with(oHuman){
	if(id == main_id) continue;
	if(ds_grid_value_exists(main_id.relations, 0, GRID.key, main_id.num_relations, GRID.key, id)) continue;
	var dist = point_distance(x, y, xx, yy);
	if(dist < familiar_space){
		main_id.relations[# main_id.num_relations, GRID.key] = id;
		main_id.relations[# main_id.num_relations, GRID.value] = 0;
		main_id.num_relations++;
	}
}

//update all relationship values
relation_strength_cap = min(1, need_index / 3);
for(var i = 0; i < num_relations; i++){
	var r_id = relations[# i, GRID.key];
	var cur_strength = relations[# i, GRID.value];
	var dist = point_distance(r_id.x, r_id.y, x, y);
	
	if(dist < familiar_space){
		if(i == 0 && cur_strength > best_friend_relation_thresh){
			cur_strength += best_friend_rate;
		}else if(1 <= i && i <= 5 && cur_strength > friend_relation_thresh){
			cur_strength += friend_rate;
		}else{
			cur_strength += familiar_rate;
		}
	}else{
		cur_strength += forget_rate/relation_strength_cap;
	}
	relations[# i, GRID.value] = clamp(cur_strength, 0, relation_strength_cap);
}

if(num_relations > 0){
	ds_grid_sort(relations, GRID.value, false);
	print(name,"'s best friend:",relations[# 0, GRID.key].name,relations[# 0, GRID.value], relation_strength_cap)
	
	//check for partner
	var has_partner = ds_map_exists(memory, "mating");
	var has_best_friend = relations[# 0, GRID.value] > best_friend_relation_thresh;
	var best_friend = relations[# 0, GRID.key];
	var best_friend_has_partner = ds_map_exists(best_friend.memory, "mating");
	var mutual_best_friend = best_friend.relations[# 0, GRID.key] == id;
	
	if(!has_partner && !best_friend_has_partner && has_best_friend && mutual_best_friend){
		memory[? "mating"] = best_friend;
		best_friend.memory[? "mating"] = id;
		print(name,"'s partner is",best_friend.name);
	}
}



