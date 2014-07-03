///show_debug_message_multiline(string)
var mystr = string_explode(argument0), i, strlen;
strlen = array_length_1d(mystr);
for (i = 0; i < strlen; i++)
    show_debug_message(mystr[i])
