///draw_text_bordered_opt(x,y,string,color_main,color_border,offset*)
/***************************************************
  Useage: Does same as draw_text_border, only allows offset
  to be optionally placed.
 ***************************************************/
var prev_color, offset;
prev_color = draw_get_color()
offset = 2
//Allow the offset input to be optional
if (argument_count > 5)
    offset = argument[5]
//Draw "border"
draw_set_color(argument[4])
draw_text(argument[0] - offset, argument[1], argument[2])
draw_text(argument[0] + offset, argument[1], argument[2])
draw_text(argument[0], argument[1] - offset, argument[2])
draw_text(argument[0], argument[1] + offset, argument[2])
//Draw main text
draw_set_color(argument[3])
draw_text(argument[0], argument[1], argument[2])
draw_set_color(prev_color)
