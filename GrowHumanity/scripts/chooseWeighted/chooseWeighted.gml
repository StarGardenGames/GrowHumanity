var weights = argument0;

var sum = 0;
print("weights")
for(var i = 0; i < array_length_1d(weights); i++){
	print(weights[i])
	sum += weights[i];
}
print("sum",sum)
var r = irandom(sum-1);
print("r",r);

sum = 0;

var i = 0;
while(sum+weights[i] < r){
	sum += weights[i];
	i++;
}
print("i",i);
return i;