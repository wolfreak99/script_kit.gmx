///bool_to_sign(bool)
/***************************************************
  USEAGE:
    Converts false to -1, and true to 1.
    
  EXAMPLE:
    player_direction = bool_to_integer(is_going_right)
        if is_going_right is 1 (true), output is 1 (right).
        if is_going_right is 0 (false), output is -1 (left).

***************************************************/
return sign(argument0 - 0.5);
