///string_height_ext2(string,sep,w)
/***************************************************
  Useage: Does the same as string_height_ext, but predefines
  the sep with the lineheight of the current font.
  Optionally, you can add to the sep, otherwise just use 0.  
 ***************************************************/
return string_height_ext(argument0, string_height("!") + argument1, argument2)
