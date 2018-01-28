var sp = stimulation * sp_max;
var stimulation_dx = lengthdir_x(sp, stimulation_angle);
var stimulation_dy = lengthdir_y(sp, stimulation_angle);

x += lerp(human_dx, stimulation_dx, stimulation);
y += lerp(human_dy, stimulation_dy, stimulation);