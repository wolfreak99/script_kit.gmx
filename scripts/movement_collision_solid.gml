///movement_collision_solid()
/***************************************************
  USEAGE:
    Helps with collision of solid objects.
    Place after movement script.
    
***************************************************/

if (vspeed != 0)
{
    if place_meeting(x, y + vspeed, argument0)
    {
        if (vspeed < 0)
        {
            move_contact_solid(A_UP, 1);
            vspeed = 0;
        }
        else if (vspeed > 0)
        {
            move_contact_solid(A_DOWN, 1);
            vspeed = 0;
            gravity = 0;
        }
    }
}
if (hspeed != 0)
{
    if place_meeting(x + hspeed, y, argument0)
    {
        if (hspeed < 0)
        {
            move_contact_solid(A_LEFT, 1);
            hspeed = 0;
        }
        else if (hspeed > 0)
        {
            move_contact_solid(A_RIGHT, 1);
            hspeed = 0;
        }
    }
}
