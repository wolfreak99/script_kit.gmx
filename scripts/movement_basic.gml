///movement_basic(leftkey,rightkey,upkey,downkey,maxspeed,acceleration,friction)
var lr, ud, lr_inc, ud_inc;
lr = (key_down(argument1) - key_down(argument0))
ud = (key_down(argument3) - key_down(argument2))
lr_inc = (abs(lr) * argument5) + (!abs(lr) * argument6)
ud_inc = (abs(ud) * argument5) + (!abs(ud) * argument6)
hspeed = approach(hspeed, lr * argument4, lr_inc)
vspeed = approach(vspeed, ud * argument4, ud_inc)
