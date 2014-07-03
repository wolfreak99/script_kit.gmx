///string_contains_which(str,substr_1,substr_2,substr_3*,substr_4*,substr_5*,substr_6*,substr_7*,substr_8*,substr_9*,substr_10*,substr_11*,substr_12*,substr_13*,substr_14*,substr_15*)
/***************************************************
  Useage: Finds if a substring exists in the string given,
  and returns the number of that substring.
  if no string is found, "" is returned.
  If the given string contains multiple substrings, it will
  return whichever substring was checked first.
 ***************************************************/
//set i to whichever argument the substrings start at.
var i = 1, _bool = true;
while _bool
{
    substring_check = string(argument[i])
    if (string_pos(substring_check, string(argument[0])) != -1)
    { 
        _bool = false
        return substring_check
    }
    else if (i < argument_count)
        i += 1
    else
        _bool = false
}
return ""
