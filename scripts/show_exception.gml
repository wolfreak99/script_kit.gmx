///show_exception(description, asset_name, abort)
/***************************************************
  USEAGE:
    Generates an error using make_error_text and gives the text:
        "description (asset_name)"
    description: string to show
    asset_name: string containing hotstrings to describe what called this. 
        (check info located in references>string_format_assets)
    abort: true if you want to abort false if not.
***************************************************/
show_error(make_error_text(string(argument0) + " (" + string_format_assets(argument1) + ")"), argument2);
