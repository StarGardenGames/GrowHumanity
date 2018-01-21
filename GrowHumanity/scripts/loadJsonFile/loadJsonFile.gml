var filename = argument0;

var file = file_text_open_read(filename);

var str = "";
while(!file_text_eof(file)){
	str += file_text_readln(file);
}

var output = json_decode(str);
print(ds_exists(output, ds_type_map))

if(output == -1){
	throwError(str, "could not be decoded");
}else{
	return output;	
}