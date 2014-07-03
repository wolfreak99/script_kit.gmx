///script_get_index(string_name)
/***************************************************
  Useage: searches for the index number of the script.
  WARNING: Depending on the amount of scripts you have and
  the desired scripts position, THIS MAY BE SLOW!
 ***************************************************/
var i;
for (i = 0; script_exists(i); i++)
{
    if (script_get_name(i) == string(argument0))
        return i;
}
show_exception('Could not find script matching "' + string(argument0) + '".', "script_get_index (%%OBJ%%)", true)
