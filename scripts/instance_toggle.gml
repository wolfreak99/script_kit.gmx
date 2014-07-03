///instance_toggle(x,y,obj)
/***************************************************
  Creates the given object if it does not exist,
  and destroys it if it does exist
 ***************************************************/
var _ret;
_ret = -1
if (instance_exists(argument2))
    with argument2
        instance_destroy()
else
    _ret = instance_create(argument0, argument1, argument2)
return _ret;
