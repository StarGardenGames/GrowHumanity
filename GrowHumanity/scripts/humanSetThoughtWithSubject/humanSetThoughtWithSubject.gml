var subject = argument[0];
var force_alpha = false;
if(argument_count == 2){
	force_alpha = argument[1];	
}
var phrase_options = oPersistent.phrases[? subject];
var index = irandom(ds_list_size(phrase_options)-1);
thought = phrase_options[| index];
thought_timer = thought_on_time;
thought_visible = true;
if(force_alpha){
	thought_alpha = 1;	
}