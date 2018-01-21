/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_alpha(thought_alpha);
draw_text(x,y-30,thought);
draw_set_alpha(1);

if(oPersistent.selected_human == id){
	draw_set_color(c_aqua);
}else{
	draw_set_color(c_yellow);	
}
draw_circle(x,y,body_radius + 2+stimulation*stimulation_max_width,false);
draw_set_color(c_white);

draw_circle(x,y,10,false);