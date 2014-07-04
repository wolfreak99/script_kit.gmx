///movement_platformer(leftkey,rightkey,jumpkey,lr_speed,jump_speed,grav_speed,vspd_max,object_ground);
/***************************************************
  USEAGE:
    allows a quick prototype movement for a platformer control.   
***************************************************/
var hspd, max_hspd, jump_spd, grav_spd, max_vspd, object_ground;
hspd = argument3;
jump_spd = argument4 * -1;
grav_spd = argument5;
max_vspd = max(argument4, argument6); //If jump speed setting is higher, it will override this. 
object_ground = argument7;

if place_meeting(x, y + max(2, vspeed), object_ground)
{
    vspeed = 0;
    gravity = 0;
    if keyboard_check_pressed(argument2)
        vspeed = jump_spd;
}
else
{
    gravity = grav_spd;
}

hspeed = (keyboard_check(argument1) - keyboard_check(argument0)) * hspd;
if place_meeting(x + hspeed, y - 16, object_ground)
    hspeed = 0;

vspeed = clamp(vspeed, max_vspd * -1, max_vspd);
