///ds_grid_row_insert(ds, row, value, ...)
/***************************************************
  USEAGE:
    Inserts a row with the given values at the given row location.
    If there are more columns/rows to add than there are in the grid,
    it will be resized without losing anything in the grid in the process.
***************************************************/
var _y, i, size;
_y = clamp(argument[1], 0, ds_grid_height(argument[0]));

ds_grid_range_shift(argument[0], 0, _y, ds_grid_width(argument[0]), ds_grid_height(argument[0]), 0, 1);

//start at 1 because the ds_grid is the 0th value.
for (i = 2; i < argument_count; i += 1)
    ds_grid_set(argument[0], i - 2, _y, argument[i])
