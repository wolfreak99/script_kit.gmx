///show_exception_unknown_state(object_state, object_name, abort)
var _state, _name, _abort;
_abort = false;
if (argument_count == 0)
{
    _state = string(object_state)
    _name = object_get_name(object_index)
}
else if (argument_count == 1)
{
    _state = string(argument[0])
    _name = object_get_name(object_index)
}
else
{
    _state = string(argument[0])
    _name = string_format_assets(argument[1])
    if (argument_count == 3)
        _abort = argument[2]
}
show_error(make_error_text("object_state unrecognized: " + _state + " (" + _name + ")"), _abort)
