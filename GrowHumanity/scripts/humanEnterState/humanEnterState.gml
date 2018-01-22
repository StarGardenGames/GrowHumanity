var new_state = argument0;

state = new_state;

switch(new_state){
case HUMAN_STATE.informing:
	humanEmitEmotion(EMOTION.informing);
	break;
case HUMAN_STATE.wandering:
	state_timer = 120;
	break;
}