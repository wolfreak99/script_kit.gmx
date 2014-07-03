///set_first_pass_object(object,event_id*)
//Can have up to 16 arguments.
//If no arguments are included, ev_step,ev_draw are created.
var i;
i=1
if argument_count==1
{
        argument[0].first_pass[ev_step] = true
        argument[0].first_pass[ev_draw] = true
}
else
{
    while argument_count>i
    {
        argument[0].first_pass[argument[i]] = true
        i+=1
    }
}
