/// @description Insert description here
// You can write your code in this editor

if(oPersistent.needs[| need_index] == "water"){
	need_index++;
	humanGetInformed("water", [other.x, other.y], id);
}