event_inherited();

fadeSpawnUpdate();

humanUpdateThought();

humanMove();

stimulation = max(stimulation - stimulation_decel, 0);
/*
if(!instance_exists(my_emotion)){
	humanEmitEmotion(temp_emo_type);
	temp_emo_type = (temp_emo_type+1)%4;
}
*/