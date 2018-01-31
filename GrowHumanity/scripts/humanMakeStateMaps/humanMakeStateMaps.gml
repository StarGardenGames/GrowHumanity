human_state_maps[HUMAN_STATE.wandering] = humanMakeStateMap(
	"Wandering", humanWanderInit, humanWander
);
human_state_maps[HUMAN_STATE.informing] = humanMakeStateMap(
	"Informing", humanInformInit, humanInforming
);
human_state_maps[HUMAN_STATE.listening] = humanMakeStateMap(
	"Listening", undefined, humanListen
);
human_state_maps[HUMAN_STATE.mating] = humanMakeStateMap(
	"Mating", humanMatingInit, humanMatingUpdate
);
human_state_maps[HUMAN_STATE.deprived] = humanMakeStateMap(
	"Deprived", humanDeprivedInit, humanDeprived
);