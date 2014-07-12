///ds_grid_range_shift(id,x1,y1,x2,y2,xoffset,yoffset)
/***************************************************
  USEAGE:
    Shifts a range of a grid by a various amount.
    (Note, this goes through each cell in given range and shifts it.
    Depending on the amount of cells, this may be slow.)
 ***************************************************/

var size_w, size_h, ix, iy, x1, y1, x2, y2, sourc;
x1 = max(0, argument1 - 1);
y1 = max(0, argument2 - 1);
size_w = ds_grid_width(argument0);
size_h = ds_grid_height(argument0);
x2 = min(size_w, argument3);
y2 = min(size_h, argument4);
ds_grid_resize(argument0, max(size_w, size_w + argument5), max(size_h, size_h + argument6))

sourc = ds_grid_create(0,0);
ds_grid_copy(sourc, argument0);
for (iy = y1; iy < y2; iy += 1)
{
    for (ix = x1; ix < x2; ix += 1)
    {
        ds_grid_set(argument0, ix + argument5, iy + argument6, ds_grid_get(sourc, ix, iy));
    }
}
ds_grid_destroy(sourc);
