///set_first_pass(event_id*)
//Can have up to 16 arguments.
//If no arguments are included, ev_step,ev_draw are created.
var i;
i = 0;
if (argument_count == 0)
{
    first_pass[ev_step] = true;
    first_pass[ev_draw] = true;
}
else
{
    while (argument_count > i)
    {
        first_pass[argument[i]] = true;
        i += 1;
    }
}
