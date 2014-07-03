///ds_grid_stack_push_noresize(id,val,...)
_y = ds_grid_height(argument[0])
for (i = 1; i < argument_count; i++)
    ds_grid_set(argument[0], i - 1, _y, argument[i])
