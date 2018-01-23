/// @description Insert description here
// You can write your code in this editor
var cur_need = oPersistent.needs[| need_index];

if(cur_need[? "name"] == other.need){ need_index++; }

if(!ds_map_exists(memory, other.need)){
	humanGetInformed(other.need, other.id, id);
}

var prev_time = concat("previous_",other.need);

if(!ds_map_exists(memory, prev_time) || (oPersistent.game_time - memory[?prev_time]) > 90){
	meta_num_water_quenchings++;
}

memory[? prev_time] = oPersistent.game_time;