/// @description Load phrases

depth = -1

needs = loadJsonFile("needs.json");
phrases = loadJsonFile("phrases.json");

selected_human = noone;
selection_thresh = 500;

instance_create_depth(0,64,0,oEventControl);
instance_create_depth(0,128,0,oViewControl);

depth_order = [
	oHuman,
	oEmotion,
	oWater
];