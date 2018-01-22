emotion_type = argument0;
parent = argument1;

image_index = emotion_type;
switch(emotion_type){
case EMOTION.happy:
	phase_times = [60, 5, 30, 1];
	break;
case EMOTION.sad:
	phase_times = [30, 30, 30, 1];
	break;
case EMOTION.excited:
	phase_times = [10, 30, 10, 1];
	break;
case EMOTION.informing:
	phase_times = [5, 45, 15, 1];
	break;
}