var thought_weights;
thought_weights = [];
array_copy(thought_weights, 0, thought_quotas, 0, THOUGHT.total);

for(var i = 0; i < circleArrayLength(thought_history); i++){
	var type = circleArrayGet(thought_history, i);
	thought_weights[type]--;
}

var next_type = chooseWeighted(thought_weights);

var subject;
switch(next_type){
case THOUGHT.need:
	var cur_need = oPersistent.needs[| need_index];
	subject = cur_need[? "name"];
	break;
case THOUGHT.mood:
	if(stimulation_max == 0){ subject = "helpless"; break; }
	if(stimulation_max == .5){ subject = "skeptical"; break; }
	if(stimulation_max == 1){ subject = "confident"; break; }
	throwError("Invalid max_simulation",stimulation_max);
	break;
}

humanSetThoughtWithSubject(subject);