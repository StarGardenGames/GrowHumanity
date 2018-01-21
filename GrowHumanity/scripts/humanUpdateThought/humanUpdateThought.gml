thought_timer--;
if(thought_timer < 0){
	thought_visible = !thought_visible;
	if(thought_visible){
		thought = humanPickThought();
		thought_timer = thought_on_time;	
	}else{
		thought_timer = thought_off_time;	
	}
}
thought_alpha = lerp(thought_alpha,thought_visible,.1);