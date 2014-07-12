///checkpoint_init()
/***************************************************
  USEAGE:
    The checkpoint scripts are a mechanic that allows you to
    store multiple checkpoints for each room, rather than just a single
    checkpoint. Some examples of what this could be used for would be
    a warp zone, a bird statue transport like in Zelda Link To The Past,
    etc. 
    
  ROWS:
    0: Room number
    1: X
    2: Y
***************************************************/

global.checkpoint_ds = ds_grid_create(0,0);

global.checkpoint_current = 0;

// When it searches for the range of the rooms checkpoints, 
// it stores it in checkpoint_last_range_start to prevent the need to
// search for it again.
global.checkpoint_last_range_start = 0; 
