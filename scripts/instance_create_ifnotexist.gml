///instance_create_ifnonexistant(x,y,obj)
if (!instance_exists(argument2))
    instance_create(argument0, argument1, argument2)
