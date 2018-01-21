//select human
var human = instance_nearest(mouse_x, mouse_y, oHuman);	
var dist = point_distance(human.x, human.y, mouse_x, mouse_y);
if(dist < selection_thresh){
	selected_human = human;
	
	//constant following
	if(mouse_check_button(mb_left)){
		var angle = point_direction(human.x, human.y, mouse_x, mouse_y);
		human.stimulation_angle = angle;
		
	}

	//initial stimulation
	if(mouse_check_button_pressed(mb_left)){
		human.stimulation = human.stimulation_max;
		
		var angle = point_direction(human.x, human.y, mouse_x, mouse_y);
		human.angle = angle;
		human.target_angle = angle;
	}
}else{
	selected_human = noone;
}

