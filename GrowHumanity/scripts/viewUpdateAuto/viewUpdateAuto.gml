if(ds_list_size(viewed_instances) == 0) exit;

var LERP_RATE = .1;

var sum_x = 0;
var sum_y = 0;
var max_x = -10000000000000;
var min_x = 10000000000000;
var max_y = -10000000000000;
var min_y = 10000000000000;
var n = ds_list_size(viewed_instances);

for(var i = 0; i < ds_list_size(viewed_instances); i++){
	var obj = viewed_instances[| i];
	sum_x += obj.x;
	sum_y += obj.y;
	max_x = max(obj.x, max_x);
	min_x = min(obj.x, min_x);
	max_y = max(obj.y, max_y);
	min_y = min(obj.y, min_y);
}

var ratio = 16/9;
var use_width =  ((max_x - min_x) / ratio) > (max_y - min_y);

var target_width, target_height;
if(use_width){
	target_width = clamp((max_x - min_x) * 2, 480, 1920);
	target_height = target_width / ratio;
}else{
	target_height = clamp((max_y - min_y) * 2, 270, 1080);
	target_width = target_height * ratio;
}

var target_x = (sum_x / n) - target_width / 2;
var target_y = (sum_y / n) - target_height/ 2;

camera_set_view_pos(
	view_camera[0],
	lerp(camera_get_view_x(view_camera[0]), target_x, LERP_RATE),
	lerp(camera_get_view_y(view_camera[0]), target_y, LERP_RATE)
)

camera_set_view_size(
	view_camera[0],
	lerp(camera_get_view_width(view_camera[0]), target_width, LERP_RATE),
	lerp(camera_get_view_height(view_camera[0]), target_height, LERP_RATE)
)