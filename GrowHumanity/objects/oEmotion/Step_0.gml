if(instance_exists(parent)){
	x = parent.x;
	y = parent.y + delta_y;
}else{
	x = xstart;
	y = ystart + delta_y;
}

emotionUpdatePhase();