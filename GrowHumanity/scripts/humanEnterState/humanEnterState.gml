var new_state = argument[0];
var args;
if(argument_count == 2){
	args = argument[1];
}else{
	args = [];	
}

state = new_state;
state_map = oPersistent.human_state_maps[state];

if(state_map[? "init_script"] != undefined){
	script_execute(state_map[? "init_script"], args);
}