/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_alpha(thought_alpha);
draw_text(x,y-30,thought);
draw_set_alpha(1);
draw_text(x,y+30,name);
draw_text(x,y+45,state_map[? "name"]);

draw_set_alpha(image_alpha);

if(!humanIsBusy()){
	if(oPersistent.selected_human == id){
		draw_set_color(c_aqua);
	}else{
		draw_set_color(c_yellow);	
	}
	draw_circle(x,y,body_radius + 2+stimulation*stimulation_max_width,false);
}

draw_set_color(makeColorGray(128 + stimulation_max*127));
draw_circle(x,y,10,false);
draw_circle(x,y,familiar_space,true);
draw_set_alpha(1);

for(var i = 0; i < num_relations; i++){
	var r_id = relations[# i, GRID.key];
	if(r_id >= id) continue;
	draw_set_color(make_color_hsv(200*relations[# i, GRID.value],255,255));
	draw_line(x, y, r_id.x, r_id.y);
}

draw_set_color(c_green);
for(var i = 0; i < ds_list_size(arrow_x); i++){
	draw_arrow(x, y, x+arrow_x[| i]*10, y+arrow_y[| i]*10, 4);
}
