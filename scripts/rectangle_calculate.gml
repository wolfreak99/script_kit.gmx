///rectangle_calculate(x, y, width, height, padding, offset, halign, valign)
/***************************************************
  Useage:
    creates a rectangle based on the given settings,
    and returns that rectangle as an array
    X = x location for rectangle.
    Y = y location for rectangle.
    width = width for rectangle.
    height = height for rectangle.
    padding = padding for text that's inside rectangle.
    offset = offset of the rectangle.
    halign = the alignment of the rectangle/font.
    valign = the alignment of the rectangle/font.
    Returned arrays:
    0 - x
    1 = y
    2 = x2
    3 = y2
    4 = text x
    5 = text y
    example:
    rect_calc = rectangle_calculate(room_width, room_height, 250, 100, 4, 20, fa_right, fa_bottom)
    draw_set_color(c_black)
    draw_rectangle(rect_calc[0], rect_calc[1], rect_calc[2], rect_calc[3], false)
    draw_set_color(c_white)
    draw_text(rect_calc[4], rect_calc[5], "This is a bottom right notification box!")
 ***************************************************/
//array 0 = x, array 1 = y, array 2 = x2, array 3 = y2, array 4 = text x, array 5 = text y
if gamemaker_version >= 1000
var rect_calc;

switch argument6
{
    case fa_left:
        rect_calc[4] = argument0 + argument5;
        rect_calc[0] = rect_calc[4] - argument4;
        rect_calc[2] = argument0 + argument2 + (argument4 * 2) + argument5;
        break;
    case fa_middle:
        rect_calc[4] = argument0 - (argument2 / 2);
        rect_calc[0] = rect_calc[4] - argument4;
        rect_calc[2] = argument0 + (argument2 / 2) + (argument4 * 2);
        break;
    case fa_right:
        rect_calc[4] = argument0 - argument2 - argument5;
        rect_calc[0] = rect_calc[4] - argument4;
        rect_calc[2] = argument0 + (argument4 * 2) - argument5;
        break;
}
switch argument7
{
    case fa_top:
        rect_calc[5] = argument1 + argument5;
        rect_calc[1] = rect_calc[5] - argument4;
        rect_calc[3] = argument1 + argument3 + (argument4 * 2) + argument5;
        break;
    case fa_middle:
        rect_calc[5] = argument1 - (argument3 / 2);
        rect_calc[1] = rect_calc[5] - argument4;
        rect_calc[3] = argument1 + (argument3 / 2) + (argument4 * 2);
        break;
    case fa_bottom:
        rect_calc[5] = argument1 - argument3 - argument5;
        rect_calc[1] = rect_calc[5] - argument4;
        rect_calc[3] = argument1 + (argument4 * 2) - argument5;
        break;
}

return rect_calc;
