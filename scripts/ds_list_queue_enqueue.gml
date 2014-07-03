///ds_list_queue_enqueue(id,value,...)
var i;
for (i = 1; i < argument_count; i++)
{
    ds_list_add(argument[0], argument[i])
}
