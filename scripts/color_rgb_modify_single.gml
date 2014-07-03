///color_rgb_modify_single(color,rgb_offset)
/***************************************************
  Useage: Modifies the given color's red green and blue
  channels all by the given offset and returns it
 ***************************************************/
return make_color_rgb( clamp(color_get_red(argument0) + argument1, 0, 255),
                clamp(color_get_green(argument0) + argument1, 0, 255),
                clamp(color_get_blue(argument0) + argument1, 0, 255) )
