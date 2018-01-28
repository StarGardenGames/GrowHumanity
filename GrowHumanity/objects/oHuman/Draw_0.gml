/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_alpha(thought_alpha);
draw_text(x,y-30,thought);
draw_set_alpha(1);
draw_text(x,y+30,name);

draw_set_alpha(image_alpha);

if(!humanIsBusy()){
	if(oPersistent.selected_human == id){
		draw_set_color(c_aqua);
	}else{
		draw_set_color(c_yellow);	
	}
	draw_circle(x,y,body_radius + 2+stimulation*stimulation_max_width,false);
}

draw_set_color(make_color_rgb(
	128 + stimulation_max*127,
	128 + stimulation_max*127,
	128 + stimulation_max*127
));
draw_circle(x,y,10,false);

draw_set_alpha(1);
