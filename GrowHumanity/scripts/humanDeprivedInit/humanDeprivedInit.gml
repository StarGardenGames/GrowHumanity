var need_name = argument0;

humanStartPathToObject(memory[? need_name]);
humanSetThoughtWithSubject(need_name, true);

if(need_name == "mating"){
	humanEnterState(HUMAN_STATE.mating);	
}