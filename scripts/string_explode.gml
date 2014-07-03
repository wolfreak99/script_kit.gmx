///string_explode(string)
/*
string_explode(string)
string = String you want to split into arrays.
Splits both # and real linebreak
example: 
array_of_string = string_explode("AY BIRD#HOW YA DOIN")
====
array_of_string[0] = "AY BIRD"
array_of_string[1] = "HOW YA DOIN"
*/
var my_string,numbers,i,pos,array;
my_string = string_replace_all(argument0,"
","#")  //don't edit. Line merges both linebreaks. 
numbers = string_count("#", my_string);
if numbers == 0
{
    array = my_string
}
else
{
    for( i = 0; i < numbers; i += 1 )
    {
        pos = string_pos("#", my_string);
        array[i] = string_copy(my_string, 1, pos-1);
        my_string = string_delete(my_string, 1, pos);
    }
}
return array
