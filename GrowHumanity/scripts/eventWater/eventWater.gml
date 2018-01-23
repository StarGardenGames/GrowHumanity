var all_stimulated = true;
with(oHuman){
	all_stimulated = all_stimulated && meta_has_been_stimulated;
}

if(!all_stimulated){
	timer = room_speed * 5;	
}

if(all_stimulated && timer < 0){
	var THRESH = 200;
	do{
		var xx = camera_get_view_x(view_camera[0]) + choose(0, camera_get_view_width(view_camera[0]));
		var yy = camera_get_view_y(view_camera[0]) + random_range(0, camera_get_view_height(view_camera[0])-sprite_get_height(sWater));
		var h = instance_nearest(xx,yy,oHuman);
	}until(point_distance(xx,yy,h.x,h.y) > THRESH);
	
	var water = instance_create_depth(xx, yy, -1, oWater);
	ds_list_add(oViewControl.viewed_instances, water);
	return true;
}else{
	return false;
}