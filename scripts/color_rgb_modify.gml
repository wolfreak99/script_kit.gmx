///color_rgb_modify(color,red_offset,green_offset,blue_offset)
/***************************************************
  Useage:
  Modifies the given color's rgb channels based on the given offsets
  and returns the new color.
  This works by parsing the rgb colors, adding the offsets, limiting
  the numbers between 0 and 255, and finally reconstructing an rgb color.
  PERFORMANCE NOTE:
    I'm not sure on how much processing goes on in make_color_rgb or
    color_get_color, nor am i even sure if clamping is necessary. I
    personally haven't even noticed any issues yet with using this,
    but for best performance, you might want to play safe and use
    a variable in your create event, rather than directly running this
    every draw event.
 ***************************************************/
return make_color_rgb( clamp(color_get_red(argument0) + argument1, 0, 255),
                clamp(color_get_green(argument0) + argument2, 0, 255),
                clamp(color_get_blue(argument0) + argument3, 0, 255) )
