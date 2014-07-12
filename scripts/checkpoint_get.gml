///checkpoint_get(room)
/***************************************************
  USEAGE:
    Gets the last(aka most recently added) checkpoint from the given room argument.
    assign it to a variable and then use variable[0] for X and variable[1] for Y.
    
 ***************************************************/
var arr, ret;

arr = ds_grid_find_range(global.checkpoint_ds, 0, checkpoint_lastrange(argument0), argument0);
if (arr[1] == -1)
    exit;
    
ret[0] = ds_grid_get(global.checkpoint_ds, 1, arr[1] - 1);
ret[1] = ds_grid_get(global.checkpoint_ds, 2, arr[1] - 1);
return ret
