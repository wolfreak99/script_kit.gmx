///string_find(string,beginswith,endswith)
//currently only finds the first one.
var ret,itag,otag;
ret = argument[0]
itag = argument[1]
otag = itag
if argument_count>2
    otag = argument[2]
ret = string_delete(ret,
            1,
            string_pos(itag, ret) + string_length(itag) - 1)
ret = string_delete(ret,
            string_pos(otag, ret),
            string_length(ret) - string_pos(otag, ret) + string_length(otag))
return ret
