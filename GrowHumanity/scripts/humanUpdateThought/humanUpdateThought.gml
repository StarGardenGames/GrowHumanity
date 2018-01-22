thought_timer--;
if(instance_exists(my_emotion)){
	thought_timer = thought_off_time;
}
if(thought_timer < 0){
	thought_visible = !thought_visible;
	if(thought_visible){
		thought = humanPickThought();
		thought_timer = thought_on_time;	
	}else{
		var is_sad_thought = thought_type == THOUGHT.need || thought == "helpless";
		if(is_sad_thought && irandom(5) == 1){
			humanEmitEmotion(EMOTION.sad);
		}
		thought_timer = thought_off_time;	
	}
}
thought_alpha = lerp(thought_alpha,thought_visible,.1);