///string_width_align(string, halign)
/***************************************************
  USEAGE:
    Returns the width relative to the alignment provided.
    Press F1 and do a search for "halign" to see how
    the x coordinate is affected by the alignment.
    This attempts to recreate that in measuring the width.
    NOTE: fa_center matches fa_middle, so do not worry on wich is provided. 
***************************************************/
switch argument1
{
    case fa_right: return string_width(argument0) * -1;
    case fa_middle: return string_width(argument0) / 2; //fa_center matches fa_middle
    default: return string_width(argument0);   
}
