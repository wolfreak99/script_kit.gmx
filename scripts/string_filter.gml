///string_filter(string, replace_with, replace_what, what*, what*, what*, what*, what*, what*, what*, what*, what*, what*, what*, what*)
/***************************************************
  Useage:
  Replace multiple substrings in a string with a single new string.
  Think of a filter or a censoring mechanic.
  Example:
  filtered_string = string_filter("fuck you gay fag suck my dick", "**", "fuck", "fag", "dick")
  filtered_string = "** you gay ** suck my **"
  If you would like to make it case insensitive, you could do
  filtered_string = string_filter(string_lower("FuCk YOU gay FaG suck my DiCk"), "**", "fuck", "fag", "dick")
  filtered_string = "** you gay ** suck my **"
  (Note the unfiltered words will be lowercased using this method)
 ***************************************************/
var i;
for (i = 2; i <= argument_count; i += 1;)
{
    _str = string_replace_all(argument[i], argument[i], string(argument[1]) )
}
return _str
