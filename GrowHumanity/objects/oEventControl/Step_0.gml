/// @description Insert description here
// You can write your code in this editor

if(event_index < array_length_1d(events)){
	var event_occurred = script_execute(events[event_index])
	if(event_occurred) event_index++;
}
timer--;