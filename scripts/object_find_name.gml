///object_find_name(string)
/***************************************************
  USEAGE:
  returns integer with matching string. 
  MODNOTE TEST: testing asset get index to see if it returns something if it's missing.
 ***************************************************/
asset_get_index(argument0)
 /*
var i;
for (i = 0; object_exists(i); i++)
{
    if object_get_name(i) == string(argument0)
        return i;
}
return -1
