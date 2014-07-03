///ini_handle_var(do_write,section,key,value_default)
/***************************************************
  Useage:
  Allows you to use only one line for both saving and loading variables.
  You don't need to define whether or not it is a real or a string either.
  Variables:
  do_write = if you want to write, make this a 1. otherwise, 0 will read.
  section = section in the ini file.
  key = the key in the ini file.
  value = what to provide when writing. this is also returned when writing.
  default = what to return if the variable does note exist when being read.
 ***************************************************/
var do_write, section, key, value;
do_write = argument0
section = argument1
key = argument2
value = argument3
if do_write
{
    if is_string(value)
        ini_write_string(section, key, value)
    else
        ini_write_real(section, key, value)
    return value
}
else
{
    if is_string(value)
        return ini_read_string(section, key, value)
    else
        return ini_read_real(section, key, value)
}
