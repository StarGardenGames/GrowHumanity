/// @description Insert description here
// You can write your code in this editor
var cur_need = oPersistent.needs[| need_index];

if(cur_need[? "name"] == "water"){ need_index++; }

if(!ds_map_exists(memory, "water")){
	humanGetInformed("water", other.id, id);
}

memory[? concat("previous_","water")] = oPersistent.game_time;