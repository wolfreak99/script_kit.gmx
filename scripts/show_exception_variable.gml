///show_exception_variable(pre_description, variable, post_description*, asset_name*, abort)
var _pre_descr, _var, _post_descr, _name, _abort;
_pre_descr = string(argument[0])
_var = string(argument[1])
_name = object_get_name(object_index)
if (argument_count > 4) //if post description was provided
{
    _post_descr = ";" + string(argument[2])
    _name = string_format_assets(argument[3])
    _abort = argument[4]
}
else
{
    _post_descr = ";"
    _name = string_format_assets(argument[2])
    _abort = argument[3]
}
show_error(make_error_text(_pre_descr + ": " + _var + _post_descr + " (" + _name + ")"), _abort)
