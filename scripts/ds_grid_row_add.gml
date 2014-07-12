///ds_grid_row_add(ds, value, ...)
/***************************************************
  makes a new row, and then appends the variables in the x row.
  if there is more rows to add than there is in the grid, it will be resized
  without losing anything in the grid in the process.
 ***************************************************/
var _y;
_y = ds_grid_height(argument[0]);

ds_grid_resize(argument[0], 
        max(ds_grid_width(argument[0]), argument_count), 
        ds_grid_height(argument[0]) + 1);

//start at 1 because the ds_grid is the 0th value.
for (i = 1; i < argument_count; i += 1)
    ds_grid_set(argument[0], i - 1, _y, argument[i])
