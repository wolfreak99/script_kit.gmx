///string_height_align(string,valign)
/***************************************************
  USEAGE:
    Returns the width relative to the alignment provided.
    Press F1 and do a search for "valign" to see how
    the y coordinate is affected by the alignment.
    This attempts to recreate that in measuring the height.
    
    NOTE: fa_center matches fa_middle, so do not worry on wich is provided. 
***************************************************/
switch (argument1)
{
    case fa_bottom: return string_height(argument0) * -1;
    case fa_middle: return string_height(argument0) / 2; //fa_center matches fa_middle
    default: return string_height(argument0);
}
