if(!instance_exists(oHuman)) exit;
//select human
if(!mouse_check_button(mb_left)){
	var human = instance_nearest(mouse_x, mouse_y, oHuman);	
	var dist = point_distance(human.x, human.y, mouse_x, mouse_y);
	if(dist < selection_thresh){
		selected_human = human;
	}else{
		selected_human = noone;
	}
}

if(selected_human != noone){
	//check busy
	var busy;
	with(selected_human){
		busy = humanIsBusy();	
	}
	if(!busy){
		//initial stimulation
		if(mouse_check_button_pressed(mb_left)){
			selected_human.stimulation = selected_human.stimulation_max;
			selected_human.meta_has_been_stimulated = true;
		
			if(selected_human.stimulation_max != 0){
				var angle = point_direction(selected_human.x, selected_human.y, mouse_x, mouse_y);
				selected_human.angle = angle;
				selected_human.target_angle = angle;
			}
		}
	
		//constant following
		if(mouse_check_button(mb_left)){
			var angle = point_direction(selected_human.x, selected_human.y, mouse_x, mouse_y);
			selected_human.stimulation_angle = angle;
		}
	}
}