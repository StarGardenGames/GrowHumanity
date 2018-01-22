//avoid wandering off screen
if( y < camera_get_view_y(view_camera[0])){
	target_angle = 270;	
}

if( y > (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]))){
	target_angle = 90;	
}

if( x < camera_get_view_x(view_camera[0])){
	target_angle = 0;	
}

if( x > (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]))){
	target_angle = 180;	
}

//update angle
dtarget_angle += random_range(-angle_jitter, angle_jitter);
dtarget_angle = clamp(dtarget_angle,-2*angle_jitter,2*angle_jitter);
target_angle += dtarget_angle;

angle = rotateAngleTowards(angle, target_angle, rot_speed);

//update speeds
human_dx = lengthdir_x(.25*sp_max, angle);
human_dy = lengthdir_y(.25*sp_max, angle);

if(state_timer < 0){
	humanEvaluatePriorities();	
}