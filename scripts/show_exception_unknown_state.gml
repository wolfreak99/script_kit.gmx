///show_exception_unknown_state(state*,name*,abort*)
/***************************************************
  USEAGE:
    Shows an error box made specifically for the variable object_state.
        
 ***************************************************/
var state, name, abort, statestr, temp;
abort = false;
name = "";
statestr = "";

switch (argument_count)
{
    case 0: state = string(object_state); break;
    case 3: abort = argument[2];
    case 2:
        temp = string(argument[1]);
        if ((temp != "") && (temp != "0"))
            name = temp;
    case 1: state = string(argument[0]); break;
}

switch (state)
{
    case ST_OFF: statestr = " (ST_OFF)"; break;
    case ST_ON: statestr = " (ST_ON)"; break;
    case ST_OFF_TO_ON: statestr = " (ST_OFF_TO_ON)"; break;
    case ST_ON_TO_OFF: statestr = " (ST_ON_TO_OFF)"; break;
}

show_exception("object_state unrecognized: " + state + statestr, name, abort);
