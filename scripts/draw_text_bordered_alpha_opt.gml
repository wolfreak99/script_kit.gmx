///draw_text_bordered_alpha_opt(x, y, string, color_main, color_border, alpha_main*, alpha_border*, offset* )
/***************************************************
  Useage:
  does same thing as draw_text_bordered_alpha, only allows some variables
  to be optional.
 ***************************************************/
var prev_color, prev_alpha, alpha_text, alpha_border,  offset;
prev_color = draw_get_color()
prev_alpha = draw_get_alpha()
offset = 2
alpha_text = prev_alpha

//Allow the offset and alpha inputs to be optional
if (argument_count > 7)
    offset = argument[7]
if argument_count > 5
    alpha_text = argument[5]
if argument_count > 6
    alpha_border = argument[6]
else
    alpha_border = alpha_text / 2

//Draw "border"
draw_set_alpha(alpha_border)
draw_set_color(argument[4])
draw_text(argument[0] - offset, argument[1], argument[2])
draw_text(argument[0] + offset, argument[1], argument[2])
draw_text(argument[0], argument[1] - offset, argument[2])
draw_text(argument[0], argument[1] + offset, argument[2])

//Draw main text
draw_set_alpha(alpha_text)
draw_set_color(argument[3])
draw_text(argument[0], argument[1], argument[2])
//Set previous color.
draw_set_alpha(prev_alpha)
draw_set_color(prev_color)
