///draw_rectangle_outline(x1,y1,x2,y2,width)
/***************************************************
  USEAGE:
    Allows you to draw a rectangles outline with a specific width.
    This works by using draw_line_width, rather than draw_rectangle.
    draw_rectangle has an outline argument, but it only gives an
    outline of 1 pixel width..
***************************************************/
draw_line_width(argument0, argument1, argument0, argument3, argument4) //left
draw_line_width(argument0, argument1, argument2, argument1, argument4) //right
draw_line_width(argument2, argument1, argument2, argument3, argument4) //top
draw_line_width(argument0, argument3, argument2, argument3, argument4) //bottom
