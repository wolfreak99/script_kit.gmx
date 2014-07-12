///checkpoint_clear_room(room)
/***************************************************
  USEAGE:
    Clears the checkpoints of the room provided.

***************************************************/
var ds_w, ds_h;

ds_h = ds_grid_height(global.checkpoint_ds);
ds_w = ds_grid_width(global.checkpoint_ds);

arr = ds_grid_find_range(global.checkpoint_ds, 0, checkpoint_lastrange(argument0), argument0);

//Exit if find range is null..
if (arr[0] == -1)
    exit;

diff = arr[0] - (arr[1] + 1);

ds_grid_range_shift(global.checkpoint_ds, 0, arr[1], ds_w, ds_h, 0, diff)
ds_grid_resize(global.checkpoint_ds, ds_w, ds_h + diff);
