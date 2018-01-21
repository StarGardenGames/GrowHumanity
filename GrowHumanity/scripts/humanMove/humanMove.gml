dtarget_angle += random_range(-angle_jitter, angle_jitter);
dtarget_angle = clamp(dtarget_angle,-2*angle_jitter,2*angle_jitter);
target_angle += dtarget_angle;
target_angle = (target_angle + 360)%360;
if(abs(angle - target_angle) < rot_speed || abs(angle - target_angle) > 360 - rot_speed){
	angle = target_angle;
}else{
	var rotate_ccw = ((target_angle - angle) > 0) != (abs(target_angle - angle) > 180)
	angle += lerp(-1, 1, rotate_ccw) * rot_speed;
	angle = (angle+360)%360;
}



var human_dx = lengthdir_x(.5*sp_max, angle);
var human_dy = lengthdir_y(.5*sp_max, angle);

var sp = stimulation * sp_max;
var stimulation_dx = lengthdir_x(sp, stimulation_angle);
var stimulation_dy = lengthdir_y(sp, stimulation_angle);

x += lerp(human_dx, stimulation_dx, stimulation);
y += lerp(human_dy, stimulation_dy, stimulation);