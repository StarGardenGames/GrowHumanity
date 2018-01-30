var name = argument0;
var init_script = argument1;
var update_script = argument2;

var map = ds_map_create();
map[? "name"] = name;
map[? "init_script"] = init_script;
map[? "update_script"] = update_script;

return map;

