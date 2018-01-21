/// @description Load phrases

//TODO: Move to external JSON

depth = -1

needs = loadJsonFile("needs.json");
phrases = loadJsonFile("phrases.json");

selected_human = noone;
selection_thresh = 500;