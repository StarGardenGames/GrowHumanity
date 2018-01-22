switch(state){
case HUMAN_STATE.wandering:
	humanWander();
	break;
case HUMAN_STATE.pathing:
	humanPath();
	break;
case HUMAN_STATE.informing:
	if(!instance_exists(my_emotion)){
		var key = info_key_to_update;
		var val = memory[? info_key_to_update];
		var lead = lead_informant;
		with(pathing_goal){
			humanGetInformed(key, val, lead);
		}
		humanPickHumanToInform();
	}
	human_dx = 0;
	human_dy = 0;
	break;
case HUMAN_STATE.listening:
	human_dx = 0;
	human_dy = 0;
	break;
}

var sp = stimulation * sp_max;
var stimulation_dx = lengthdir_x(sp, stimulation_angle);
var stimulation_dy = lengthdir_y(sp, stimulation_angle);

x += lerp(human_dx, stimulation_dx, stimulation);
y += lerp(human_dy, stimulation_dy, stimulation);