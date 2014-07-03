///string_height_ext_align(string,sep,w,halign)
/***************************************************
  USEAGE:
    Returns the height relative to the alignment provided.
    Press F1 and do a search for "valign" to see how
    the y coordinate is affected by the alignment.
    This attempts to recreate that in measuring the height.
    NOTE: fa_center matches fa_middle, so do not worry on wich is provided. 
***************************************************/
switch (argument3)
{
    case fa_bottom: return string_height_ext(argument0, argument1, argument2) * -1;
    case fa_middle: return string_height_ext(argument0, argument1, argument2) / 2; //fa_center matches fa_middle
    default: return string_height_ext(argument0, argument1, argument2);
}
