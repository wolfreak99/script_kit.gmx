///place_meeting_around_corners(x,y,obj,offset)
/***************************************************
  USEAGE:
    Use with place_meeting_around. This adds detection for corners.
    
  VARIABLES:
    x - See place_meeting in manual.
    y - See place_meeting in manual.
    obj - See place_meeting in manual.
    offset - the distance to check on the edges.
        (Example: offset of 1 would be x - 1, y; x, y - 1; etc)
***************************************************/

if place_meeting(argument0 - argument3, argument1 - argument3, argument2)
    return true;

if place_meeting(argument0 - argument3, argument1 + argument3, argument2)
    return true;

if place_meeting(argument0 + argument3, argument1 - argument3, argument2)
    return true;

if place_meeting(argument0 + argument3, argument1 + argument3, argument2)
    return true;

return false;
