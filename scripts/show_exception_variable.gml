///show_exception_variable(pre_description,variable,post_description**,asset_name*,abort)
/***************************************************
  USEAGE:
    runs show_exception with the form of "pre_descr: variable; post_descr".
    read show_exception for more info.

***************************************************/
var pre_descr, _var, post_descr, name, abort, temp;

pre_descr = string(argument[0]);
_var = string(argument[1]);

post_descr = "";
name = "";
abort = false;

switch (argument_count)
{
    case 5:
        post_descr = "; " + string(argument[2]);
        name = string(argument[3]);
        abort = argument[4];
        break;
    case 4:
        name = string(argument[3]);
        abort = argument[3];
        break;
    case 3:
        abort = argument[2];
        break;
}

show_exception(pre_descr + ": " + _var + post_descr, name, abort);
