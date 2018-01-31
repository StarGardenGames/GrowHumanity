var from = (argument0 + 360)%360;
var to = (argument1+360)%360;

if(abs(to - from) < 180){
	return to - from
}else{
	if(to < from){
		return (to+360) - from;	
	}else{
		return to - (from+360);	
	}
}