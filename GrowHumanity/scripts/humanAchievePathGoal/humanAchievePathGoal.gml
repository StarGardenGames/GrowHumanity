switch(path_goal){
case PATH_GOAL.inform:
	humanEnterState(HUMAN_STATE.informing);
	with(path_goal_object){
		humanEnterState(HUMAN_STATE.listening);
	}
	break;
default:
	humanEvaluatePriorities();
}