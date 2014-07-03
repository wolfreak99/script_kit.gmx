///string_width_ext2(string,sep,w)
/***************************************************
  Useage: Does the same as string_width_ext, but predefines
  the sep with the lineheight of the current font.
  Optionally, you can add to the sep, otherwise just use 0.  
  NOTE: I am an idiot who did not realize you can just use -1 in place of sep.
 ***************************************************/
return string_width_ext(argument0, string_height("!") + argument1, argument2)
