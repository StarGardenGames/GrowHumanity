var current = argument0;
var target = argument1;
var sp = argument2;

//bound within (0,360)
current = (current + 360)%360;
target = (target + 360)%360;

//from how far current would need to rotate ( and what direction)
var delta = angleDelta(current, target);

if(abs(delta) < sp){
	current = target;
}else{
	current += sign(delta) * sp;
}

return current;