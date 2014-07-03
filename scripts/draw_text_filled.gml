//draw_text_fill(x,y,text,text_color,fill_color)
/***************************************************
  USEAGE:
    Draw the text with a background "filler"
***************************************************/
var prev_color;
prev_color = draw_get_color();
draw_set_color(argument4);
draw_rectangle(argument0, argument1, argument0 + string_width(argument2), argument1 + string_height(argument2), false);
draw_set_color(argument3);
draw_text(argument0, argument1, argument2);
draw_set_color(prev_color);
