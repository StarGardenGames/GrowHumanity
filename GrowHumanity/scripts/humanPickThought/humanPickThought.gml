var subject = oPersistent.needs[| need_index];

var phrase_options = oPersistent.phrases[? subject];
var index = irandom(ds_list_size(phrase_options)-1);
return phrase_options[| index];