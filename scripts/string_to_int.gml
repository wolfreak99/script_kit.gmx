///string_to_int(string)
/***************************************************
  Useage:
    takes the input string and turns it into a number.
    The difference between this and string_digits is
    that this also preserves the negative sign and decimal
    if it exists.
 ***************************************************/
var input = argument0;
var output = "";
var _neg = ""
//string_digits removes the negative, so preserve if it exists.
if string_count("-",input)
{
    _neg = "-"
    string_replace(input, "-", "")
}
//string_digits removes decimals, so preserve it if it exists.
if string_count(".", input)
{
    //prepare script variables
    var before_dec, after_dec, dec_pos;
    //this variable help reduce lines
    dec_pos = string_pos(".", input)
    //Seperate strings.
    before_dec = string_copy(input, 1, dec_pos - 1)
    after_dec = string_copy(input, dec_pos + 1, string_length(input))
    //strip and merge both strings and set to real number.
    //output = real(_neg + string_digits(before_dec) + "." + string_digits(after_dec))
    output = string_digits(before_dec) + "." + string_digits(after_dec)
}
else
    output = string_digits(input)
    //output = real(_neg + string_digits(input))
return real(_neg + output)
//return output
