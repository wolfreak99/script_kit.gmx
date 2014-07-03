///var_init()
/***************************************************
  USEAGE:
    The var_* scripts are meant to provide GameMaker Studio
    with something similar to GM8.1's global_variable_set, etc.
  NOTE:
    You must run var_init prior to be able to use these,
    and you must run var_uninit at the end of the game.
    It is recommended that you put this script (or call
    scrkit_preload) in your preloader script. check the about
    for help.. 
 ***************************************************/
global.var_map = ds_map_create()
