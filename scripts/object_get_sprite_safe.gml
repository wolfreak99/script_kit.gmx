///object_get_sprite_safe(int_index, sprite_default)
/***************************************************
  Useage:
  Does the same as object_get_sprite, but allows
  you to define an "eror" sprite incase the
  object does not have a sprite.
 ***************************************************/
var ret;
ret = object_get_sprite(argument0);
if (ret != -1)
    return ret;
else
    return argument1;
