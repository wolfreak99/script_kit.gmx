///array_append(array_appending_to, var*, var*, var*, var*, var*, var*, var*, var*, var*, var*, var*, var*, var*, var*, var*)
var i, start_pos, my_array;
my_array = argument[0]
start_pos = array_length_1d(my_array)
for (i = 1; i < argument_count; i ++)
{
    my_array[i - 1 + start_pos] = argument[i]
}
return my_array
