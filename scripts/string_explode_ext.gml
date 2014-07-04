///string_explode_ext(string,char,make_numbers*)
/***************************************************
  USEAGE:
    splits string into arrays by character provided.
    
  EXAMPLE:
    array = string_explode("AY BIRD!HOW YA DOIN", "!");
    results in
    array[0] = "AY BIRD"
    array[1] = "HOW YA DOIN"
***************************************************/
var my_string,numbers,i,pos,array;
my_string = argument[0];

if (string_char_at(my_string,string_length(my_string)) != argument[0]) //needed to get last argument
    my_string += argument[1];
        
numbers = string_count(argument[1], my_string);

if numbers == 0
{
    array[0] = my_string
}
else
{
    for( i = 0; i < numbers; i += 1 )
    {
        pos = string_pos(argument1, my_string);
        array[i] = string_copy(my_string, 1, pos - 1);
        my_string = string_delete(my_string, 1, pos);
    }
}
return array
