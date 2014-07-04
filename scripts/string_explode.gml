///string_explode(string)
/***************************************************
  USEAGE:
    splits string into arrays by line breaks (both linebreak and #)
    
  EXAMPLE:
    array = string_explode("AY BIRD#HOW YA DOIN");
    results in
    array[0] = "AY BIRD"
    array[1] = "HOW YA DOIN"
***************************************************/


//now makes use of string_explode_ext. 

return string_explode_ext(string_replace_all(argument0,"
","#"),"#"); //line break is intentional to merge with #, do not edit.
