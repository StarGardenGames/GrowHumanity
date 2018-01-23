var LERP_RATE = .1;


var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_width = camera_get_view_width(view_camera[0]);
var cam_height = camera_get_view_height(view_camera[0]);

var drag_size = cam_width * .05;

var in_x_range = (cam_x + drag_size) < mouse_x && mouse_x < (cam_x + cam_width - drag_size);
var in_y_range = (cam_y + drag_size) < mouse_y && mouse_y < (cam_y + cam_height - drag_size);

var target_x, target_y;
if(in_x_range && in_y_range){
	target_x = cam_x;
	target_y = cam_y;
}else{
	var sp = 50;
	var dir = point_direction(
		cam_x + cam_width/2, cam_y + cam_height/2,
		mouse_x, mouse_y
	);
	target_x = cam_x + lengthdir_x(sp, dir);
	target_y = cam_y + lengthdir_y(sp, dir);
}

camera_set_view_pos(
	view_camera[0],
	lerp(camera_get_view_x(view_camera[0]), target_x, LERP_RATE),
	lerp(camera_get_view_y(view_camera[0]), target_y, LERP_RATE)
);