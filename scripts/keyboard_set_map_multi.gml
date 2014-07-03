///keyboard_set_map_multi(def,new,new*,new*,new*,new*,new*,new*,new*,new*,new*,new*,new*,new*,new*)
/***************************************************
  Useage: Allows many keys to be linked to one key. You can also assign
  this to a variable, and it will return the key to use in if checks.
  NOTE: the order for arguments is OPPOSITE of keyboard_set_map,
  put what you want to map TO as the FIRST variable!
  Tips:
  -in this script, ord("C") can simply be "c".. this will uppercase and ord it!
  -Put in CREATE, rather than STEP.
  -Unmap all keys with keyboard_unset_map() when you no longer need them!
  Example:
    CREATE:
        keyboard_set_map_multi(vk_up, ord("W"), vk_space, ord("Z"))
    STEP:
        if keyboard_check_pressed(vk_up)
  Variable Example:
    CREATE:
        key_jump = keyboard_set_map_multi(vk_up, ord("W"), vk_space, "z")
    STEP:
        if keyboard_check_pressed(key_jump)
 ***************************************************/
var i, def_key;
if (is_string(argument[0]))
    def_key = ord(string_upper(argument[0]));
else
    def_key = argument[0];
for (i = 1; i < argument_count; i++)
{
    if (!is_string(argument[i]))
        keyboard_set_map(argument[i], def_key)
    else if (argument[i] != "") //ignore empties
        keyboard_set_map(ord(string_upper(argument[i])), def_key)
}            
return def_key
