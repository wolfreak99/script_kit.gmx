///ds_grid_delete_first_resize(id)
var temp_ds, null;
null = -1;
dswidth = ds_grid_width(argument0);
dsheight = ds_grid_height(argument0);
for (iy = 1; iy < dsheight; iy++)
{
    for (ix = 0; ix < dswidth; iy++)
    {
        ds_grid_set(argument0, ix, iy - 1, ds_grid_get(argument0, ix, iy));
    }
}
ds_grid_set_region(argument0, 0, dsheight - 1, dswidth - 1, dsheight - 1, null);
ds_grid_resize(argument0, dswidth, dsheight - 1);
