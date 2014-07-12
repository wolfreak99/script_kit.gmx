///string_is_number(string)
/***************************************************
  USEAGE:
    Checks if a string is made up only of "0123456789.-"
    If it isn't, it returns false.
 ***************************************************/
var i, len;
len = string_length(argument0);
for (i = 0; i <= len; i += 1)
{
    char = string_char_at(argument0, i);
    if !(char = "0" or
        char = "1" or
        char = "2" or
        char = "3" or
        char = "4" or
        char = "5" or
        char = "6" or
        char = "7" or
        char = "8" or
        char = "9" or
        char = "-" or
        char = ".")
            return false;

}
return true;
