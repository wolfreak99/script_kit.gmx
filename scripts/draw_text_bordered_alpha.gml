///draw_text_bordered_alpha(x, y, string, color_main, color_border, alpha_main, alpha_border, offset)
var prev_color, prev_alpha;
prev_color = draw_get_color()
prev_alpha = draw_get_alpha()
//Draw "border"
draw_set_alpha(argument6)
draw_set_color(argument4)
draw_text(argument0 - argument7, argument1, argument2)
draw_text(argument0 + argument7, argument1, argument2)
draw_text(argument0, argument1 - argument7, argument2)
draw_text(argument0, argument1 + argument7, argument2)
//Draw main text
draw_set_alpha(argument5)
draw_set_color(argument3)
draw_text(argument0, argument1, argument2)
draw_set_alpha(prev_alpha)
draw_set_color(prev_color)
