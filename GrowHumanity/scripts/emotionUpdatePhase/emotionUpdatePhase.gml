/// @description Insert description here
// You can write your code in this editor
switch(phase){
case EMOTION_PHASE.rising:
	delta_y = travel_dist * sin((timer/phase_times[phase])*(pi/2));
	break;
case EMOTION_PHASE.holding: 
	break;
case EMOTION_PHASE.fading:
	image_alpha -= 1 / phase_times[phase];
	break;
case EMOTION_PHASE.destroy:
	instance_destroy();
	break;
}

timer++;
if(timer > phase_times[phase]){
	timer = 0;
	phase++;
}

