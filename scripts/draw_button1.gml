///draw_button1(x,y,string)
/***************************************************
  USEAGE:
    Creates a simple button that interracts with the mouse.
    (for keyboard and mouse interraction with more complexity,
        use draw_button_ext under "menus")
***************************************************/
var _x, _y, text_width, text_height;
_x = argument0;
_y = argument1;
draw_set_falign(fa_center, fa_center);
text_width = string_width(argument2) + 4;
text_height = string_height(argument2) + 4;
draw_set_alpha(0.2);
draw_rectangle(_x - text_width, _y - text_height, _x + text_width, _y + text_height, false);
draw_set_alpha(1);
draw_text(_x, _y, argument2);

if (mouse_x > _x - text_width)
    if (mouse_x < _x + text_width)
        if (mouse_y > _y - text_height)
            if (mouse_y < _y + text_height)
                if mouse_check_button_pressed(mb_left)
                {
                    io_clear();
                    return true;
                }

return false;
