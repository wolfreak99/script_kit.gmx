///make_delta_time(number,as_fps)
/***************************************************
  USEAGE:
    Creates a delta time. If as_fps is true, it uses the room speed.
    If as_fps is false, the delta time will reflect in seconds.
 ***************************************************/
var _fps;
_fps = 1;
if (argument_count > 1)
    if (argument[1])
        _fps = (room_speed)

return argument[0] + ((delta_time / 1000000) * _fps)
