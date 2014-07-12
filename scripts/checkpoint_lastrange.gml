///checkpoint_lastrange(IGNORE_THIS)

var last_range;

last_range = ds_grid_get(global.checkpoint_ds, 0, global.checkpoint_last_range_start);
if (last_range == argument0)
    return last_range;
else
    return 0;

