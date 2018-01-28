var str="";
var vowel = choose(false, true);

repeat(irandom_range(3,5)){
	var char;
	if(vowel){
		char = choose("a", "e", "i", "o", "u");
	}else{
		char = choose("b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "z");
	}
	if(string_length(str) == 0){
		str += string_upper(char);
	}else{
		str += char;	
	}
	vowel = !vowel;
}

string_upper(string_char_at(str,0));

return str;