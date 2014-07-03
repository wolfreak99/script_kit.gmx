///ds_priority_find_value(id,priority)
var temp_ds, loop, val, prior, _ret;
//Create temporary ds_priority since we'll be deleting on our search.
temp_ds = ds_priority_create()
ds_priority_copy(temp_ds, argument0)
_ret = -1; //Default if never found.
loop = true;
while (loop && !ds_priority_empty(temp_ds))
{
    val = ds_priority_find_max(temp_ds)
    prior = ds_priority_find_priority(temp_ds, val)
    if (prior == argument1)
    {
        _ret = val
        loop = false
    }
    else
        ds_priority_delete_max(temp_ds)
}
//destroy temporary ds_priority before we leave script, (it's temporary for a reason!)
ds_priority_destroy(temp_ds)
return _ret;
