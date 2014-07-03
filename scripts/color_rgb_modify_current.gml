///color_rgb_modify_current(red_offset,green_offset,blue_offset)
/***************************************************
  Useage:
  Modifies current color's rgb channels based on the given offsets
  and returns it.
  PERFORMANCE
 ***************************************************/
var _cur;
_cur = draw_get_colour();
return make_color_rgb( clamp(color_get_red(_cur) + argument0, 0, 255),
                clamp(color_get_green(_cur) + argument1, 0, 255),
                clamp(color_get_blue(_cur) + argument2, 0, 255) )
