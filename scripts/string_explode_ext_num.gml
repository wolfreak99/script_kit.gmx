///string_explode_ext_num(string,char)

/*
string_explode(string)
string = String you want to split into arrays.
example: 
array_of_string = string_explode_ext("AY BIRD!HOW YA DOIN","!")
====
array_of_string[0] = "AY BIRD"
array_of_string[1] = "HOW YA DOIN"
*/

var my_string,numbers,i,pos,array;
my_string = argument0;


if (string_char_at(my_string,string_length(my_string)) != argument0) //needed to get last argument
    my_string += argument1;
    
numbers = string_count(argument1, my_string);
if numbers == 0
{
    array[0] = my_string
}
else
{
    for( i = 0; i < numbers; i += 1 )
    {
        pos = string_pos(argument1, my_string);
        array[i] = string_copy(my_string, 1, pos-1);
        my_string = string_delete(my_string, 1, pos);
    }
}
return array
