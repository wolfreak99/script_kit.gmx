///ds_grid_row_set(ds, row, value, ...)
/***************************************************
  USEAGE:
    chooses a row, and then appends the variables in the x row.
    if there is more columns to add than there is in the grid, it will be resized
    without losing anything in the grid in the process.
 ***************************************************/
var _y;
_y = clamp(argument[1], 0, ds_grid_height(argument[0]));

ds_grid_resize(argument[0], 
        max(ds_grid_width(argument[0]), argument_count), 
        ds_grid_height(argument[0]) + 1);

//start at 1 because the ds_grid is the 0th value.
for (i = 2; i < argument_count; i += 1)
    ds_grid_set(argument[0], i - 2, _y, argument[i])
