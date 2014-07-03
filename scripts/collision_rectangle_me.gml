///collision_rectangle_me(offset, obj, prec)
var _x, _y, img_xoffset, img_yoffset, img_width, img_height;
img_xoffset = mask_xoffset()
img_yoffset = mask_yoffset()
img_width = mask_width()
img_height = mask_height()
_x = x - img_xoffset
_y = y - img_yoffset
return collision_rectangle(_x - argument0, _y - argument0, _x + img_width + argument0, _y + img_height + argument0, argument1, argument2, false)
