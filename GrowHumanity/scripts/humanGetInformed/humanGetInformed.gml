info_key_to_update = argument0;
var info_value = argument1;
lead_informant = argument2;

if(!ds_map_exists(memory, info_key_to_update)){
	humanEmitEmotion(EMOTION.excited);	
}

memory[? info_key_to_update] = info_value;

if(lead_informant==id){
	informed_set = ds_map_create();
	informed_set[? id] = true;
}

humanPickHumanToInform();