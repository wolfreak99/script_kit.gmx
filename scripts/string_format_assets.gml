///string_format_assets(string)
/***************************************************
  This is used in all of the exception generators
  to create the name shown in parenthesis.
  How it works:
  is string argument blank, 0, or not even provided?
        if so, return object name.
  else
        take string provided, replace "hotstrings" with variables, and then return.
  CURRENT HOTSTRINGS:
    %%OBJECT%% / %%OBJ%% = object name
    %%ROOM%% / %%RM%% = room name
    %%SPRITE%% / %%SPR%% = sprite name
    %%MASK%% / %%MSK%% = mask_name
    %%TIMELINE%% / %%TL%% = timeline name
    %%PATH%% / %%PTH%% = path name
    %%FONT%% = a prebuilt string saying "(current font)" until a way to retrieve font name is made.
 ***************************************************/
//Protip: avoid group if and checks. I explained why here: http://sn.im/nestedifandchecks
var is_blank;
is_blank = true;
if (argument_count > 0)
    if (string(argument[0]) != "")
        if (string(argument[0]) != "0")
            is_blank = false;
if is_blank
{
    return object_get_name(object_index);
}
else
{
    var _ret;
    //Shortcoded hotstrings.
    _ret = string_replace_ext(string(argument[0]),
                    "%%OBJ%%", "%%OBJECT%%",
                    "%%RM%%", "%%ROOM%%",
                    "%%SPR%%", "%%SPRITE%%",
                    "%%MSK%%", "%%MASK%%",
                    "%%PTH%%", "%%PATH%%",
                    "%%FNT%%", "%%FONT%%")
    _ret = string_replace_ext(_ret,
                    "%%TL%%", "%%TIMELINE%%");
    //Perform hotkey conversion. 
    //NOTE: If object doesn't have a sprite or mask, sprite or mask might not work.
    var fnt_string;
    fnt_string = "(Current font)"; //currently there is no draw_get_font() or font_index..
    _ret = string_replace_ext(_ret,
                    "%%OBJECT%%", object_get_name(object_index),
                    "%%ROOM%%", room_get_name(room),
                    "%%SPRITE%%", sprite_get_name(sprite_index),
                    "%%MASK%%", sprite_get_name(mask_index),
                    "%%TIMELINE%%", timeline_get_name(timeline_index),
                    "%%FONT%%", fnt_string
                    );
    return _ret;
}
