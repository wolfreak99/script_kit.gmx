///color_rgb_modify_current_single(rgb_offset)
/***************************************************
  Useage: Modifies the current color and changes the offset
  by the given amount and returns it.
 ***************************************************/
var _cur;
_cur = draw_get_colour();
return make_color_rgb( clamp(color_get_red(_cur) + argument0, 0, 255),
                clamp(color_get_green(_cur) + argument0, 0, 255),
                clamp(color_get_blue(_cur) + argument0, 0, 255) )
