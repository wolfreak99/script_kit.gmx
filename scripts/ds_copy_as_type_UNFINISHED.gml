/*
CURRENTLY UNFINISHED, PLEASE USE DS_COPY_AS_GRID INSTEAD.
///ds_copy_as_type(sourceid, ds_type_destination)
//for vars
var conv_from_grid_to_grid, conv_from_grid_to_list, conv_from_grid_to_map, conv_from_grid_to_priority, conv_from_grid_to_queue,
conv_from_grid_to_stack, conv_from_list_to_grid, conv_from_list_to_list, conv_from_list_to_map, conv_from_list_to_priority,
conv_from_list_to_queue, conv_from_list_to_stack, conv_from_map_to_grid, conv_from_map_to_list, conv_from_map_to_map,
conv_from_map_to_priority, conv_from_map_to_queue, conv_from_map_to_stack, conv_from_priority_to_grid, conv_from_priority_to_list,
conv_from_priority_to_map, conv_from_priority_to_priority, conv_from_priority_to_queue, conv_from_priority_to_stack,
conv_from_queue_to_grid, conv_from_queue_to_list, conv_from_queue_to_map, conv_from_queue_to_priority, conv_from_queue_to_queue,
conv_from_queue_to_stack, conv_from_stack_to_grid, conv_from_stack_to_list, conv_from_stack_to_map, conv_from_stack_to_priority,
conv_from_stack_to_queue, conv_from_stack_to_stack;
//assign vars
conv_from_grid_to_grid = 11
conv_from_grid_to_list = 12
conv_from_grid_to_map = 13
conv_from_grid_to_priority = 14
conv_from_grid_to_queue = 15
conv_from_grid_to_stack = 16
conv_from_list_to_grid = 21
conv_from_list_to_list = 22
conv_from_list_to_map = 23
conv_from_list_to_priority = 24
conv_from_list_to_queue = 25
conv_from_list_to_stack = 26
conv_from_map_to_grid = 31
conv_from_map_to_list = 32
conv_from_map_to_map = 33
conv_from_map_to_priority = 34
conv_from_map_to_queue = 35
conv_from_map_to_stack = 36
conv_from_priority_to_grid = 41
conv_from_priority_to_list = 42
conv_from_priority_to_map = 43
conv_from_priority_to_priority = 44
conv_from_priority_to_queue = 45
conv_from_priority_to_stack = 46
conv_from_queue_to_grid = 51
conv_from_queue_to_list = 52
conv_from_queue_to_map = 53
conv_from_queue_to_priority = 54
conv_from_queue_to_queue = 55
conv_from_queue_to_stack = 56
conv_from_stack_to_grid = 61
conv_from_stack_to_list = 62
conv_from_stack_to_map = 63
conv_from_stack_to_priority = 64
conv_from_stack_to_queue = 65
conv_from_stack_to_stack = 66
var convert_from, convert_to, new_ds, old_ds, old_ds_width, old_ds_height, convert_method, source, had_error, error_string, i;
source = argument0
convert_from = ds_get_type(source)
old_ds_width = 0;
old_ds_height = 0;
convert_to = argument1
switch convert_from
{
    case ds_type_grid:
        //If it only copies over one cell, switch commented out creations
        //old_ds = ds_grid_create(ds_grid_width(source), ds_grid_height(source))
        old_ds = ds_grid_create(1, 1);
        ds_grid_copy(old_ds, source);
        old_ds_width = ds_grid_width(old_ds);
        old_ds_height = ds_grid_height(old_ds);
        convert_method = 10;
        break;
    case ds_type_list:
        old_ds = ds_list_create();
        ds_list_copy(old_ds, source);
        old_ds_width = 1
        old_ds_height = ds_list_size(old_ds);
        convert_method = 20;
        break;
    case ds_type_map:
        old_ds = ds_map_create();
        ds_map_copy(old_ds, source);
        old_ds_width = 2
        old_ds_height = ds_map_size(old_ds);
        convert_method = 30;
        break;
    case ds_type_priority:
        old_ds = ds_priority_create();
        ds_priority_copy(old_ds, source);
        old_ds_width = 2;
        old_ds_height = ds_priority_size(old_ds);
        convert_method = 40;
        break;
    case ds_type_queue:
        old_ds = ds_queue_create();
        ds_queue_copy(old_ds, source);
        old_ds_width = 1;
        old_ds_height = ds_queue_size(old_ds);
        convert_method = 50;
        break;
    case ds_type_stack:
        old_ds = ds_stack_create();
        ds_stack_copy(old_ds, source);
        old_ds_width = 1;
        old_ds_height = ds_stack_size(old_ds);
        convert_method = 60;
        break;
    default:
        had_error = true;
        error_string = "convert_from unknown!";
        break;
}
switch convert_to
{
    case ds_type_grid: new_ds = ds_grid_create(1,1); convert_method += 1; break;
    case ds_type_list: new_ds = ds_list_create(); convert_method += 2; break;
    case ds_type_map: new_ds = ds_map_create(); convert_method += 3; break;
    case ds_type_priority: new_ds = ds_priority_create(); convert_method += 4; break;
    case ds_type_queue: new_ds = ds_queue_create(); convert_method += 5; break;
    case ds_type_stack: new_ds = ds_stack_create(); convert_method += 6; break;
    default: had_error = true; error_string = "convert_to unknown!"; break;
}
//conv_from_grid_to_grid, conv_from_grid_to_list, conv_from_grid_to_map, conv_from_grid_to_priority, conv_from_grid_to_queue,
//conv_from_grid_to_stack, conv_from_list_to_grid, conv_from_list_to_list, conv_from_list_to_map, conv_from_list_to_priority,
//conv_from_list_to_queue, conv_from_list_to_stack, conv_from_map_to_grid, conv_from_map_to_list, conv_from_map_to_map,
//conv_from_map_to_priority, conv_from_map_to_queue, conv_from_map_to_stack, conv_from_priority_to_grid, conv_from_priority_to_list,
//conv_from_priority_to_map, conv_from_priority_to_priority, conv_from_priority_to_queue, conv_from_priority_to_stack,
//conv_from_queue_to_grid, conv_from_queue_to_list, conv_from_queue_to_map, conv_from_queue_to_priority, conv_from_queue_to_queue,
//conv_from_queue_to_stack, conv_from_stack_to_grid, conv_from_stack_to_list, conv_from_stack_to_map, conv_from_stack_to_priority,
//conv_from_stack_to_queue, conv_from_stack_to_stack
switch convert_method
{
    case conv_from_list_to_grid:
        for (i = 0; i < old_ds_height; i++)
            ds_grid_add(new_ds, 0, i, ds_list_find_value(old_ds, i));
        break;
    case conv_from_map_to_grid:
        var ds_keystr;
        ds_keystr = ds_map_find_first(old_ds)
        ds_grid_add(new_ds, 0, 0, ds_keystr)
        ds_grid_add(new_ds, 1, 0, ds_map_find_value(old_ds, ds_keystr))
        for (i = 1; i <= old_ds_height; i++)
        {
            ds_keystr = ds_map_find_next(old_ds, 1)
            ds_grid_add(new_ds, 0, i, ds_keystr)
            ds_grid_add(new_ds, 1, i, ds_map_find_value(old_ds, ds_keystr))
        }
        //for (i = 0; i < old_ds_height; i++)
        //{
        //    if ds_map_exists(old_ds, i)
        //    {
        //        ds_grid_add(new_ds, 0, i, i) //MODNOTE TODO: Put some form of retrieval for key strings
        //        ds_grid_add(new_ds, 1, i, ds_map_find_value(old_ds, i))
        //    }
        //}
        break;
    case conv_from_priority_to_grid:
        for (i = 0; i < old_ds_height && !ds_priority_empty(old_ds); i++)
        {
            val = ds_priority_find_max(old_ds)
            ds_grid_add(new_ds, 0, i, val)
            ds_grid_add(new_ds, 1, i, ds_priority_find_priority(old_ds, val))
            ds_priority_delete_value(old_ds, val)
            //temp = ds_priority_find_value(old_ds, i)
            //if (temp != -1)
            //{
            //    ds_grid_add(new_ds, 0, i, temp)
            //    ds_grid_add(new_ds, 1, i, ds_priority_find_priority(old_ds, temp))
            //}
        }
        break;
    case conv_from_stack_to_grid:
        for (i = 0; i < old_ds_height && !ds_stack_empty(old_ds); i++)
        {
            ds_grid_add(new_ds, 0, i, ds_stack_top(old_ds))
            ds_stack_pop(old_ds)
        }
        break;
    case conv_from_queue_to_grid:
        for (i = 0; i < old_ds_height && !ds_queue_empty(old_ds); i++)
        {
            ds_grid_add(new_ds, 0, i, ds_queue_tail(old_ds))
            ds_queue_dequeue(old_ds)
        }
        break;
    default:
        had_error = true;
        error_string = "convert_method for " + string(convert_method) + " not created yet!"
        break;
}
