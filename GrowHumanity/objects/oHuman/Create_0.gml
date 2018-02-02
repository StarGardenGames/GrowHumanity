/// @description Initialize Variables
event_inherited();

fadeSpawnInit();

birth_time = oPersistent.game_time;
adult_age = 60*room_speed;
infant_body_radius = 3;
adult_body_radius = 10;

state_timer = 0; 
sub_state = 0;
humanEnterState(HUMAN_STATE.wandering);

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

path_goal = noone;
pathing = false;
path_complete = true;
path_sp = sp_max;

meta_has_been_stimulated = false;
meta_num_water_quenchings = 0;

name = humanGetName();

conversational_space = 48;
familiar_space = 128;
personal_space = 32;
romantic_space = 5;

human_dx = 0;
human_dy = 0;

best_friend_rate = 1 / (10*room_speed);
best_friend_relation_thresh = .5;

friend_rate = 1 / (20*room_speed);
friend_relation_thresh = .25;

familiar_rate = 1 / (40*room_speed);
forget_rate = -1 / (120*room_speed);

relations = ds_grid_create(100,2);
num_relations = 0;
for(var i = 0; i < ds_grid_height(relations); i++){
	relations[# i, GRID.value] = -1;	
}
relation_strength_cap = 0;

arrow_x = ds_list_create();
arrow_y = ds_list_create();


