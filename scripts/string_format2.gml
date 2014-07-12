///string_format2(format,value,...)
/***************************************************
  USEAGE:
    Allow easily to format a string with a defined structure and up to 15 values.
  
  FORMAT VALUES:
  %a01 = argument1
  %a01 = argument2
  ...
  %a15 = argument15
  %nl = newline
  
  EXAMPLE:
    string_format2("Hello %a01! How was your %a02 going?", "Jimmy", "day") == "Hello Jimmy! How is your day going?"
    string_format2("Hello %a01! How was your %a02 going?", "Sarah", "evening") == "Hello Sarah! How is your evening going?"
    string_format2("Hello %a01! How was your %a02 going?", "Amanda", "penis") == "Hello Sarah! How is your penis going?"
 ***************************************************/
var i, str, istr;
i = 0;
str = string_replace_all(argument[0], "%nl", "#");
for (i = 1; i < argument_count; i += 1)
{
    istr = string_replace_all(string_format(i, 2, 0), " ", "0"); //Helps in making i double digits.
    str = string_replace_all(str, "%a" + istr, string(argument[i]));
}

return str;
