///instance_create_one(x,y,obj)
/***************************************************
  Useage: Same as instance_create, only this will destroy
  any previously existing versions of that object.
 ***************************************************/
var new_inst;
if instance_exists(argument2)
{
    with argument2
        instance_destroy()
}
new_inst = instance_create(argument0, argument1, argument2)
return new_inst;
