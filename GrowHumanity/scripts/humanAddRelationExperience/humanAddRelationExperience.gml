var other_human_id = argument0;

var mem_id = concat("human_", name);

var cur_strength = ds_map_find_value(memory, mem_id);

cur_strength += .1;

ds_map_replace(memory, mem_id, cur_strength);