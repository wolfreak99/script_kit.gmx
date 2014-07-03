///string_remove_ext(string, remove_what, what*, what*, what*, what*, what*, what*, what*, what*, what*, what*, what*, what*, what*)
var _str = argument[0], i = 0;
for (i = 0; i <= argument_count; i += 1;)
{
    _str = string_replace_all(_str, argument[i], "")
}
return _str
