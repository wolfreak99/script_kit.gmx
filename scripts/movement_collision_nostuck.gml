///movement_collision_nostuck(obj_solid,do_hor,do_ver)
/***************************************************
  USEAGE:
    Prevents the calling object from getting stuck inside the
    provided object by checking if one is diectly over them,
    measures if it's more above or more below the halfway point
    of the other object, and then pushes it out that way.
    
  VARIABLES:
    obj_solid - the wall or ground you want this to work for.
    do_hor - set true if you want this to push it out horizontally.
    do_ver - set true if you want this to push it out vertically.
***************************************************/
if place_meeting(x, y, argument0)
{
    var _obj;
    _obj = instance_place(x, y, all);
    
    if (argument1)
    {
        self_x = (x - sprite_xoffset) + (sprite_width / 2);
        other_x = (_obj.x - _obj.sprite_xoffset) + (_obj.sprite_width / 2);
        meas = self_x - other_x;
        x += meas;
    }
    if (argument2)
    {
        self_y = (y - sprite_yoffset) + (sprite_height / 2);
        other_y = (_obj.y - _obj.sprite_yoffset) + (_obj.sprite_height / 2);
        meas = self_y - other_y;
        y += sign(meas);
    }
}
