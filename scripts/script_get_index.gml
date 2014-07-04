///script_get_index(string_name)
/***************************************************
  USEAGE:
    searches for the index number of the script.
  
  GAMEMAKER 8.1 WARNING:
    This checks through ALL of your scripts names until
    it matches the string. Depending on the amount of scripts
    you have and how far down the searched script is, THIS MAY BE SLOW!!
  
  (GameMaker Studio users should use asset_get_index unless this is necessary)  
**************************************************/

var i;
for (i = 0; script_exists(i); i++)
{
    if (script_get_name(i) == string(argument0))
        return i;
}
show_exception('Could not find script matching "' + string(argument0) + '".', "script_get_index (%%OBJ%%)", false)
