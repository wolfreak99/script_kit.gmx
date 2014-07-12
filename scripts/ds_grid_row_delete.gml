///ds_grid_row_delete(ds, row)
/***************************************************
  USEAGE:
    Deletes a row in a grid. If it's the last row, all columns will
    be set to -1 (because resizing the height to 0 crashes)
***************************************************/
var w, h, i;
w = ds_grid_width(argument0);
h = ds_grid_height(argument0);
ds_grid_range_shift(argument0, 0, argument1, w, h, 0, -1);
if (h != 1)
    ds_grid_resize(argument0, w, h - 1);
else
    for (i = 0; i < w; i += 1)
    {
        ds_grid_set(argument0, i, argument1, -1);
    }
