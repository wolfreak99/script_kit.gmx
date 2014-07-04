///movement_rotation(key_left,key_right,key_forward,key_backward,walk_maxspd,turn_maxspd,walk_accel,walk_fric,turn_accel,turn_fric)
/***************************************************
  USEAGE:
    A quick prototype script to emulate the movement as you'd
    see in a rotation based movement, such as cars, first person views, etc.
  
  NOTE:
    Must call movement_initialize() within the create event to use this!
    
  
***************************************************/

var key_forward,key_backward,key_left,key_right,walk_maxspd,turn_maxspd,walk_accel,walk_fric,turn_accel,turn_fric;
key_forward = argument0;
key_backward = argument1;
key_left = argument2;
key_right = argument3;
walk_maxspd = argument4;
turn_maxspd = argument5;
walk_accel = argument6;
walk_fric = argument7;
turn_accel = argument8;
turn_fric = argument9;

lr = (key_down(key_right) - key_down(key_left)); //Left is negative.
ud = (key_down(key_forward) - key_down(key_backward));
lr_inc = (abs(lr) * turn_accel) + (!abs(lr) * turn_fric)
ud_inc = (abs(ud) * walk_accel) + (!abs(ud) * walk_fric)
speed = approach(speed, ud * walk_maxspd, ud_inc)

scrkitmovement_momentum[0] = approach(scrkitmovement_momentum[0], lr * turn_maxspd, lr_inc);
direction = (direction + scrkitmovement_momentum[0]) mod 360;
