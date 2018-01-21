var start_x, start_y, origin_x, origin_y, stimulated;
with(oHuman){
	start_x = xstart;
	start_y = ystart;
	origin_x = x;
	origin_y = y;
	stimulated = has_been_stimulated;
}

var dist = point_distance(start_x, start_y, origin_x, origin_y);

if(stimulated && dist > 200){
	var spawn_dir1 = random(360);
	var human1 = instance_create_depth(
		origin_x + lengthdir_x(100, spawn_dir1),
		origin_y + lengthdir_y(100, spawn_dir1),
		0, oHuman
	);
	human1.stimulation_max = .5;
	ds_list_add(oViewControl.viewed_instances, human1);
	
	var spawn_dir2 = spawn_dir1 + 90 + random(180);
	var human2 = instance_create_depth(
		origin_x + lengthdir_x(100, spawn_dir2),
		origin_y + lengthdir_y(100, spawn_dir2),
		0, oHuman
	);
	human2.stimulation_max = 0;
	ds_list_add(oViewControl.viewed_instances, human2);
	
	return true;
}else{
	return false;
}