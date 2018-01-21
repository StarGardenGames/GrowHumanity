var thought_weights;
thought_weights = [];
array_copy(thought_weights, 0, thought_quotas, 0, THOUGHT_TYPE.total);

for(var i = 0; i < circleArrayLength(thought_history); i++){
	var type = circleArrayGet(thought_history, i);
	thought_weights[type]--;
}

var next_type = chooseWeighted(thought_weights);

var subject;
switch(next_type){
case THOUGHT_TYPE.need:
	subject = oPersistent.needs[| need_index];
	break;
case THOUGHT_TYPE.mood:
	if(stimulation_max == 0){ subject = "helpless"; break; }
	if(stimulation_max == .5){ subject = "skeptical"; break; }
	if(stimulation_max == 1){ subject = "confident"; break; }
	throwError("Invalid max_simulation",stimulation_max);
	break;
}

var phrase_options = oPersistent.phrases[? subject];
var index = irandom(ds_list_size(phrase_options)-1);
return phrase_options[| index];