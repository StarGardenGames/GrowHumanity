var dir = point_direction(x, y, path_goal.x, path_goal.y);
var dist = point_distance(x, y, path_goal.x, path_goal.y);

var at_end;
switch(state){
case HUMAN_STATE.informing:
	at_end = dist < conversational_space;
	break;
case HUMAN_STATE.deprived:
	at_end = place_meeting(x,y,path_goal);
	break;
case HUMAN_STATE.mating:
	switch(sub_state){
	case 0: at_end = dist < conversational_space;	break;
	case 1: at_end = dist < romantic_space; break;
	case 3: at_end = dist > conversational_space; break;
	}
	break;
}

print(name,at_end,path_sp,dir);
if(at_end){
	human_dx = 0;
	human_dy = 0;
	path_complete = true;
	pathing = false;
}else{
	human_dx = lengthdir_x(path_sp, dir);
	human_dy = lengthdir_y(path_sp, dir);
}