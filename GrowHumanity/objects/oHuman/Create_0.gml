/// @description Initialize Variables
event_inherited();

need_index = 0;

thought_history_length = 5
thought_history = circleArrayInit(thought_history_length);
thought = "";
thought_alpha = 0;
thought_on_time = 90;
thought_off_time = 120;
thought_visible = false;
thought_timer = random(90);
thought_quotas[THOUGHT_TYPE.need] = 4;
thought_quotas[THOUGHT_TYPE.mood] = 3;


sp_max = 4;
target_angle = random(360);
dtarget_angle = 0;
angle_jitter = 4;
angle = random(360);
rot_speed = 3;

stimulation_max = 1;
stimulation = 0;
stimulation_decel = .02;
stimulation_max_width = 5;
stimulation_angle = 0;

body_radius = 10;

has_been_stimulated = false;






