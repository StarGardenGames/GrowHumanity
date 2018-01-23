var num_quenchings = 0;
with(oHuman){
	num_quenchings+=meta_num_water_quenchings;
}

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

print(num_quenchings);
if(num_quenchings > 8){
	oViewControl.mode = VIEW_MODE.manual;
	
	var margin_scale = .5;
	
	var vertical = choose(false, true);
	var xx, yy;
	var min_x = camX() - camW()*margin_scale;
	var min_y = camY() - camH()*margin_scale;
	var max_x = camX() + camW()*(1+margin_scale);
	var max_y = camY() + camH()*(1+margin_scale);
	if(vertical){
		xx = random_range(min_x, max_x);
		yy = choose(min_y, max_y);
	}else{
		xx = choose(min_x, max_x);
		yy = random_range(min_y, max_y);
	}
	
	var food = instance_create_depth(xx, yy, -1, oFood);
	
	return true;
}else{
	return false;
}