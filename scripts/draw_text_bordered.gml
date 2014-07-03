///draw_text_bordered(x, y, string, color_main, color_border, offset)
var prev_color, offset;
prev_color = draw_get_color()
//Allow the offset input to be optional
//Draw "border"
draw_set_color(argument4)
draw_text(argument0 - argument5, argument1, argument2)
draw_text(argument0 + argument5, argument1, argument2)
draw_text(argument0, argument1 - argument5, argument2)
draw_text(argument0, argument1 + argument5, argument2)
//Draw main text
draw_set_color(argument3)
draw_text(argument0, argument1, argument2)
draw_set_color(prev_color)
