///checkpoint_add(room,x,y)
/***************************************************
  USEAGE:
    This adds a checkpoint to the checkpoint mechanic.
    It will be added below the other checkpoints of the given room.
***************************************************/

arr = ds_grid_find_range(global.checkpoint_ds, 0, checkpoint_lastrange(argument0), argument0);
ds_grid_row_insert(global.checkpoint_ds, arr[1], argument0, argument1, argument2);
