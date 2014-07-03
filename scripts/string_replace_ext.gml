///string_replace_ext(string, replace_what, replace_with, what, with, what, with, what, with, what, with, what, with, what, with)
var _str = argument[0];
switch argument_count
{
    case 16: case 15: _str = string_replace_all(_str, argument[13], string(argument[14]))
    case 14: case 13: _str = string_replace_all(_str, argument[11], string(argument[12]))
    case 12: case 11: _str = string_replace_all(_str, argument[9], string(argument[10]))
    case 10: case 09: _str = string_replace_all(_str, argument[7], string(argument[8]))
    case 08: case 07: _str = string_replace_all(_str, argument[5], string(argument[6]))
    case 06: case 05: _str = string_replace_all(_str, argument[3], string(argument[4]))
    case 04: case 03: _str = string_replace_all(_str, argument[1], string(argument[2]))
    case 02: case 01: break;
}
return _str
