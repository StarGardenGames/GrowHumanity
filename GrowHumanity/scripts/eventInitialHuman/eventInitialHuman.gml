var xx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
var yy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;

var first_human = instance_create_depth(xx, yy, 0, oHuman);

ds_list_add(oViewControl.viewed_instances, first_human);

return true;