///show_exception(description,asset_name,abort)
/***************************************************
  USEAGE:
    Generates an error using make_error_text and gives the text:
        "description (asset_name)".
        (other show_exception_variations ultimately send to this script)
  
  VARIABLES:
    description: string to show
    asset_name: string optionally containing hotstrings to provide help with tracing
            what called this error. (For info or reference on hotstrings,
            check references>string_format_assets )
    abort: true if you want to abort, false if not.
***************************************************/
var name;
//TRIVIA: "string(argument1)" is 17 characters. "name" is 4. das' rite.
name = string(argument1);
if ((name != "") && (name != "0"))
    name = "%%OBJ%% [%%X%%,%%Y%%]";
    
show_error(make_error_text(string(argument0) + " (" + name + ")"), argument2);
