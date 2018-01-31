var xx = x;
var yy = y;
var main_id = id;
with(oHuman){
	if(ds_grid_value_exists(main_id.relations, 0, GRID.key, num_relations, GRID.key+1, id)) continue;
	if(id == main_id) continue;
	var dist = point_distance(x, y, xx, yy);
	if(dist < familiar_space){
		main_id.relations[# main_id.num_relations, GRID.key] = id;
		main_id.relations[# main_id.num_relations, GRID.value] = 0;
		main_id.num_relations++;
	}
}

for(var i = 0; i < num_relations; i++){
	var r_id = relations[# i, GRID.key];
	var cur_strength = relations[# i, GRID.value];
	var dist = point_distance(r_id.x, r_id.y, x, y);
	if(dist < familiar_space){
		cur_strength += familiar_rate;
	}else{
		print(cur_strength,forget_rate);
		cur_strength += forget_rate;
	}	
	relations[# i, GRID.value] = clamp(cur_strength, 0, 1);
}
if(num_relations > 0){
	ds_grid_sort(relations, GRID.value, false);
	print(name,"'s best friend:",relations[# 0, GRID.key].name);
}