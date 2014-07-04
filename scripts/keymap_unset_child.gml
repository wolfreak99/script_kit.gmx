///keymap_unset_child(key)
/***************************************************
  USEAGE:
    unmaps any keys that are mapped to te given key.
    (Currently, this does not support unmapping a key
    that's mapped to another key, use keymap_unset_child
    until further notice).
    
  NOTE:
    Unfortunately, there currently is no native way to 
    simply remove mappings under a single key.
    
    To work around this, this checks ALL of the keys for mappings,
    stores them in a temporary array, unmaps all keys, and then
    remaps all of the other keys that were stored.
    
    if you want to unmap all keys, use keymap_unset_all().
***************************************************/
keyboard_set_map(argument0,argument0);
