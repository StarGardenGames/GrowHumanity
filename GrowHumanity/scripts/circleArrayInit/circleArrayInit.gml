var max_length = argument0;

var arr;
arr[CIRCLE.length] = 0;
arr[CIRCLE.start] = 0;

for(var i = CIRCLE.header_size; i < CIRCLE.header_size + max_length; i++){
	arr[i] = 0;	
}

return arr;