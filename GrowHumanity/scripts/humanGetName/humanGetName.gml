var str="";
var vowel = choose(false, true);
var name_exists = false;
repeat(irandom_range(3,5)){
	var char;
	if(vowel){
		char = choose("a", "e", "i", "o", "u");
	}else{
		char = choose("b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "r", "s", "t", "v", "z");
	}
	if(string_length(str) == 0){
		str += string_upper(char);
	}else{
		str += char;	
	}
	vowel = !vowel;
}
name_exists = false;


return str;