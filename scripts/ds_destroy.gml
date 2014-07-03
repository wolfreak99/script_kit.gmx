///ds_destroy(id)
var ds_type;
ds_type = ds_get_type(argument0);
switch ds_type
{
    case ds_type_grid: ds_grid_destroy(argument0); break;
    case ds_type_list: ds_list_destroy(argument0); break;
    case ds_type_map: ds_list_destroy(argument0); break;
    case ds_type_priority: ds_priority_destroy(argument0); break;
    case ds_type_queue: ds_queue_destroy(argument0); break;
    case ds_type_stack: ds_queue_destroy(argument0); break;
    default: show_error("ds_destroy: ds_type unknown: " + string(ds_type), false); break;
}
