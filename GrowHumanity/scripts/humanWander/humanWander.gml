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

ds_list_clear(arrow_x);
ds_list_clear(arrow_y);

//reset
human_dx = 0;
human_dy = 0;

//compute random components angle
dtarget_angle += random_range(-angle_jitter, angle_jitter);
dtarget_angle = clamp(dtarget_angle,-2*angle_jitter,2*angle_jitter);
target_angle += dtarget_angle;

angle = rotateAngleTowards(angle, target_angle, rot_speed);

//update speeds
ds_list_add(arrow_x, lengthdir_x(.25*sp_max, angle));
ds_list_add(arrow_y, lengthdir_y(.25*sp_max, angle));
human_dx += lengthdir_x(.25*sp_max, angle);
human_dy += lengthdir_y(.25*sp_max, angle);

//compute pull from relationships
/*
for(var i = 0; i < min(5, num_relations); i++){	
	var r_id = relations[# i, GRID.key];
	var dir = point_direction(x, y, r_id.x, r_id.y);
	var dist = point_direction(x, y, r_id.x, r_id.y);
	var sp = relations[# i, GRID.value]*sp_max*.07;
	if(dist < (personal_space*2)) sp = 0;
	ds_list_add(arrow_x, lengthdir_x(sp, dir));
	ds_list_add(arrow_y, lengthdir_y(sp, dir));
	human_dx += lengthdir_x(sp, dir);
	human_dy += lengthdir_y(sp, dir);
}*/

if(state_timer < 0){
	humanEvaluatePriorities();	
}