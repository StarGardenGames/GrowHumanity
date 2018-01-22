var current = argument0;
var target = argument1;
var sp = argument2;

//bound within (0,360)
current = (current + 360)%360;
target = (target + 360)%360;

//if we can reach the target just go there
var canReachTargetThisStep = 
	abs(current - target) < sp || abs(current - target) > (360 - sp)
if(canReachTargetThisStep){
	current = target;

//otherwise rotate in the appropriate direction
}else{
	var rotate_ccw = ((target - current) > 0) != (abs(target - current) > 180)
	current += lerp(-1, 1, rotate_ccw) * sp;
	current = (current+360)%360;
}

return current;