var dir = point_direction(x, y, pathing_goal.x, pathing_goal.y);
var dist = point_distance(x, y, pathing_goal.x, pathing_goal.y);

if(dist < conversational_space){
	human_dx = 0;
	human_dy = 0;
	humanAchievePathGoal();
}else{
	human_dx = lengthdir_x(sp_max, dir);
	human_dy = lengthdir_y(sp_max, dir);
}