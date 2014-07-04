///collision_rectangle_me(offset,obj,prec)
/***************************************************
  USEAGE:
    Forms a collision rectangle around the parent/calling object
    and returns true if it's colliding with the given obj variable.
    
    Collision rectangle handles the mask's offset and size automatically,
    and also increases the rectangle by the given offset (this means
    the smaller the offset, the closer the collision has to be).
    
  Example:
    The following code will trigger if obj_wall is 4 pixels away
    from a rectangular collision
        if collision_rectangle_me(4,obj_wall,false)
            show_message("collided with wall!")
    
    The following code will trigger if obj_wall has a rectangular collision.
        if collision_rectangle_me(0,obj_wall,false)
            show_message("collided with wall!")
    
***************************************************/
var _x, _y, img_xoffset, img_yoffset, img_width, img_height;
img_xoffset = mask_xoffset()
img_yoffset = mask_yoffset()
img_width = mask_width()
img_height = mask_height()
_x = x - img_xoffset
_y = y - img_yoffset
return collision_rectangle(_x - argument0, _y - argument0, _x + img_width + argument0, _y + img_height + argument0, argument1, argument2, false)
