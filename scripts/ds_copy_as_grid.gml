///ds_copy_as_grid(source)
var source, convert_from, old_ds_height, old_ds, new_ds, i, val, _ret;
source = argument1
convert_from = ds_get_type(source)
old_ds_width = 0;
old_ds_height = 0;
new_ds = ds_grid_create(1, 1); //attempting this for both, if doesn't work, replace with return ds_grid_copy(argument0, source) for copying grid grid
if (convert_from == ds_type_grid) //No need to convert an already-grid dataset :P
{
    ds_grid_copy(new_ds, source)
}
else
{
    switch convert_from
    {
        case ds_type_list:
            old_ds_height = ds_list_size(source);
            ds_grid_resize(new_ds, 1, old_ds_height);
            for (i = 0; i < old_ds_height; i++)
                ds_grid_add(new_ds, 0, i, ds_list_find_value(source, i));
            break;
        case ds_type_map:
            old_ds_height = ds_map_size(source)
            ds_grid_resize(new_ds, 2, old_ds_height)
            for (i = 0; i < old_ds_height; i++)
                if ds_map_exists(source, i)
                {
                    ds_grid_add(new_ds, 0, i, i) //MODNOTE TODO: Put some form of retrieveal for key strings
                    ds_grid_add(new_ds, 1, i, ds_map_find_value(old_ds, i))
                }
            break;
        case ds_type_priority:
            old_ds = ds_priority_create();
            ds_priority_copy(old_ds, source);
            old_ds_height = ds_priority_size(old_ds);
            for (i = 0; i < old_ds_height && !ds_priority_empty(old_ds); i++)
            {
                val = ds_priority_find_max(old_ds);
                ds_grid_add(new_ds, 0, i, val);
                ds_grid_add(new_ds, 1, i, ds_priority_find_priority(old_ds, val));
                ds_priority_delete_value(old_ds, val);
            }
            ds_priority_destroy(old_ds)
            break;
        case ds_type_queue:
            old_ds = ds_queue_create();
            ds_queue_copy(old_ds, source);
            old_ds_width = 1;
            old_ds_height = ds_queue_size(old_ds);
            for (i = 0; i < old_ds_height && !ds_queue_empty(old_ds); i++)
            {
                ds_grid_add(new_ds, 0, i, ds_queue_tail(old_ds));
                ds_queue_dequeue(old_ds);
            }
            ds_queue_destroy(old_ds);
            break;
        case ds_type_stack:
            old_ds = ds_stack_create();
            ds_stack_copy(old_ds, source);
            old_ds_width = 1;
            old_ds_height = ds_stack_size(old_ds);
            convert_method = 60;
            for (i = 0; i < old_ds_height && !ds_stack_empty(old_ds); i++)
            {
                ds_grid_add(new_ds, 0, i, ds_stack_top(old_ds));
                ds_stack_pop(old_ds);
            }
            ds_grid_destroy(old_ds);
            break;
        default:
            show_error("ds_copy_as_grid: convert_from unknown! " + string(convert_from), false);
            break;
    }
}
return new_ds; //Some reason this was not here before.. 6/28/2014
