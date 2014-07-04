///string_is_number(string)
/***************************************************
  USEAGE:
    Returns if a string is made up of only numeric and -. characters.

  EXAMPLE:
    string_is_number("1337") = true
    string_is_number("-13.37") = true
    string_is_number("check line 14") = false
***************************************************/
var s, l, i, c, k;
s = string(argument0);
l = string_length(argument0);
//k = "check line 11";
for (i = 0; i < l; i += 1)
{
    c = string_char_at(argument0, i);
    switch (c)
    {
        case "0":
        case "1":
        case "2":
        case "3":
        case "4":
        case "5":
        case "6":
        case "7":
        case "8":
        case "9":
        case ".":
        case "-": break;
        default: return false;
    }
}
return true;

