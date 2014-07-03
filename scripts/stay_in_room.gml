///stay_in_room()
/***************************************************
  useage: keeps the object from leaving the room boundary
 ***************************************************/
x = clamp(x, 0, room_width)
y = clamp(y, 0, room_height)
