///instance_change_destroy_ext(oldobject,newobject)
/***************************************************
  Useage: Creates a new object at the old objects
  place and then destroys the cuoldrrent object.
  The difference between this and instance_change, is that
  this runs the new objects create stage
 ***************************************************/
if instance_exists(argument0)
{
    var ret;
    ret = instance_create(argument0.x, argument0.y, argument1);
    with argument0
    {
        instance_destroy();
    }
    return ret;
}
return NULL;
