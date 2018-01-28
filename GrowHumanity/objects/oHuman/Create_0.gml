/// @description Initialize Variables
event_inherited();

fadeSpawnInit();

state = HUMAN_STATE.wandering;
state_timer = 0; 

my_emotion = noone;

need_index = 0;

thought_history_length = 5
thought_history = circleArrayInit(thought_history_length);
thought = "";
thought_type = 0;
thought_alpha = 0;
thought_on_time = 90;
thought_off_time = 120;
thought_visible = false;
thought_timer = random(90);
thought_quotas[THOUGHT.need] = 4;
thought_quotas[THOUGHT.mood] = 3;

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

memory = ds_map_create();

lead_informant = noone;
informant_depth = 0;
info_key_to_udpate = "";
informed_set = -1;

path_goal_object = noone;
path_goal = noone;

body_radius = 10;


meta_has_been_stimulated = false;
meta_num_water_quenchings = 0;

name = humanGetName();

conversational_space = 48;
familiar_space = 128;

familiar_rate = 1 / (60*room_speed);
forget_rate = -1 / (20*room_speed);





