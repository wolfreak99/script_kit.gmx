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
var i, str, argchar, reach;
i = 0;
str = string_replace_all(argument[0], "%nl", "#");

reach = min(argument_count, 9) //cache before entering for..
for (i = 0; i < reach; i += 1)
{
    str = string_replace_all(str, "%a0" + string(i), string(argument[i]));
}
if argument_count > 9
{
    for (i = 10; i < argument_count; i += 1)
    {
        str = string_replace_all(str, "%a" + string(i), string(argument[i]));
    }
}
return str;
