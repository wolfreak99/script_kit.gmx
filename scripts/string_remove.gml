///string_remove(string,remove_what,what*,what*,what*,what*,what*,what*,what*,what*,what*,what*,what*,what*,what*)
/***************************************************
  USEAGE:
    Removes all the "what"'s entered from the "string" provided.
***************************************************/
var _str, i;
_str = argument[0];
for (i = 1; i < argument_count; i += 1)
{
    _str = string_replace_all(_str, argument[i], "")
}
return _str;
