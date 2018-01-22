var dir = point_direction(x, y, path_goal_object.x, path_goal_object.y);
var dist = point_distance(x, y, path_goal_object.x, path_goal_object.y);

var at_end;
switch(path_goal){
case PATH_GOAL.inform:
	at_end = dist < conversational_space;
	break;
case PATH_GOAL.need:
	at_end = place_meeting(x,y,path_goal_object);
	break;
}

if(at_end){
	human_dx = 0;
	human_dy = 0;
	humanAchievePathGoal();
}else{
	human_dx = lengthdir_x(sp_max, dir);
	human_dy = lengthdir_y(sp_max, dir);
}