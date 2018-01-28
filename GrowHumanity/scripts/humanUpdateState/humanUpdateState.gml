switch(state){
case HUMAN_STATE.wandering:
	humanWander();
	break;
case HUMAN_STATE.pathing:
	humanPath();
	break;
case HUMAN_STATE.informing:
	humanInforming();
	break;
case HUMAN_STATE.listening:
	human_dx = 0;
	human_dy = 0;
	break;
}

state_timer--;

humanMove();