///ds_get_type(id)
/***************************************************
  What to do if there's a new unkown dataset type:
  1) When this script is triggered with an unknown dataset type, you will
    get a message with a number telling you to check these notes.
    the message will also appear in the debug output incase you forget to write the # down.
    --IF YOU DO NOT GET A NUMBER, please increase the check_limit under the default section.
  2) copy the commented out on 30 and 31 and place it diretly above, remove the slash* and *slash
  3) remove the ds_type_WHATEVER and type ds_type_ and wait a few seconds, 
    is there a new unaddressed ds_type_ constant? if so, skip to 5, if not continue.
  4) assuming this ds_type does not exist, open up your constants list and
    write a new constant with the value of the number you recieved.
    name this constant according to what type of dataset you're using,
    preferrably start the name with "ds_type_"
  5) in newer line you created in this script earlier in step 2, change the
    ds_type_ in the line (there's 2 of them) with the newer ds_type_ constant.
 ***************************************************/
if ds_exists(argument0, ds_type_grid)
    return ds_type_grid
else if ds_exists(argument0, ds_type_list)
    return ds_type_list
else if ds_exists(argument0, ds_type_map)
    return ds_type_map
else if ds_exists(argument0, ds_type_priority)
    return ds_type_priority
else if ds_exists(argument0, ds_type_queue)
    return ds_type_queue
else if ds_exists(argument0, ds_type_stack)
    return ds_type_stack
/*else if ds_exists(argument0, ds_type_whatever)
    return ds_type_whatever*/
else
{
    var i, loop, check_num, do_error, error_head;
    check_num = 1000
    do_error = true; //Disable this if you do not want physical errors shown.
    error_head = "DS_IS_TYPE ERROR (called by " + string(object_get_name(id.object_index)) + "): "
    loop = true;
    for (i = 0; i < check_num && loop; i++)
    {
        if ds_exists(argument0, i)
        {
            loop = false
            if do_error
                show_message(error_head + "please check the instructions in the script ds_is_type. the number to use is "+string(i))
            show_debug_message(error_head + "please check the instructions in the script ds_is_type. the number to use is "+string(i))
            return i
        }
    }
    if (loop)
        show_error(error_head + "unknown number to find. please check the instructions in the script ds_is_type", true)
}
