var arr = argument0;
var value = argument1;

if(arr[CIRCLE.length] == circleArrayMaxLength(arr)){
	arr[CIRCLE.start] = (arr[CIRCLE.start] + 1)%circleArrayMaxLength(arr);
}else{
	arr[CIRCLE.length]++;
}
circleArraySet(arr, arr[CIRCLE.length]-1, value); 