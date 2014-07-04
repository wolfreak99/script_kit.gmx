///movement_collision_with(obj_wall)
/***************************************************
  USEAGE:
    Helps with collision of solid objects.
    Place after movement script.
    
***************************************************/
if collision_rectangle_me(1,argument0, false)
{
if collision_rectangle_me(1,argument0,true)
{
if (vspeed != 0)
{
    if place_meeting(x, y + vspeed, argument0)
    {
        if (vspeed < 0)
        {
            move_contact_solid(A_UP, 1);
            vspeed = 0;
        }
        if (vspeed > 0)
        {
            move_contact_solid(A_DOWN, 1);
            vspeed = 0;
            gravity = 0;
        }
    }
}
if (hspeed != 0)
{
    if place_meeting(x + hspeed, y, obj_wall)
    {
        if (hspeed < 0)
        {
            move_contact_solid(A_LEFT, 1);
            hspeed = 0;
        }
        if (hspeed > 0)
        {
            move_contact_solid(A_RIGHT, 1);
            hspeed = 0;
        }
    }
}
}
}
