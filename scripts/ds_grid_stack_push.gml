///ds_grid_stack_push(id,val,...)
var _x, _y, i;
_x = max(ds_grid_width(argument[0]) - 1, argument_count - 1)
_y = ds_grid_height(argument[0])
ds_grid_resize(argument[0], _x, _y)
_y = ds_grid_height(argument[0]);
for (i = 1; i < argument_count; i++)
    ds_grid_set(argument[0], i - 1, _y, argument[i])
