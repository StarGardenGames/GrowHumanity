var weights = argument0;

var sum = 0;
for(var i = 0; i < array_length_1d(weights); i++){
	sum += weights[i];
}

var r = irandom(sum-1);

sum = 0;
var i = 0;
while(sum+weights[i] < r){
	sum += weights[i];
	i++;
}
return i;