var xx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
var yy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;

var first_human = instance_create_depth(xx, yy, 0, oHuman);
first_human.need_index = 2;
ds_list_add(oViewControl.viewed_instances, first_human);
first_human.num_relations = 1;

var second_human = instance_create_depth(xx+100, yy, 0, oHuman);
second_human.need_index = 2;
ds_list_add(oViewControl.viewed_instances, second_human);
second_human.num_relations = 1;

first_human.relations[# 0, GRID.key] = second_human;
first_human.relations[# 0, GRID.value] = .45;

second_human.relations[# 0, GRID.key] = first_human;
second_human.relations[# 0, GRID.value] = .45;

return true;