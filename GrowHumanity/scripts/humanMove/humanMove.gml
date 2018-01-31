var sp = stimulation * sp_max;
var stimulation_dx = lengthdir_x(sp, stimulation_angle);
var stimulation_dy = lengthdir_y(sp, stimulation_angle);

var dx = lerp(human_dx, stimulation_dx, stimulation);
var dy = lerp(human_dy, stimulation_dy, stimulation);
/*
var main_id = id;
var move_angle = point_direction(0, 0, dx, dy);
var t_sp = point_distance(0, 0, dx, dy);
with(oHuman){
	if(id == main_id) continue;
	if(point_distance(x, y, main_id.x, main_id.y) < personal_space){
		//subtract vector projection
		var away_dir = point_direction(main_id.x, main_id.y, x, y)+90;
		away_dir = (away_dir+360)%360;
		var diff = angleDelta(move_angle, away_dir);
		move_angle = away_dir + random(sign(diff)*45);
		t_sp = .5*sp;
	}
}

dx = lengthdir_x(t_sp, move_angle);
dy = lengthdir_y(t_sp, move_angle);*/

x+= dx;
y+= dy;


