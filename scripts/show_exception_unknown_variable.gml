///show_exception_unknown_variable(variable_name, variable, object_name, abort)
/***************************************************
  USEAGE:
    generates an error with the text:
    "variable_name unrecognized: variable (object_name)"
    
    I WOULD have used one variable and done variable_local_get, but since
    gamemaker studio doesn't have it, i'm stuck using variable_name and variable, I'm sorry.
    
    variable_name: string of the variable. (variable with "'s around it)
    variable: the variable to show.
    object_name: put something here, or ""/0/"%%OBJ%%" to have the current objects name show..
    abort: put true if you wish to abort..
    
***************************************************/

show_exception(string(argument0) + " unrecognized: " + string(argument1), string(argument2), argument3);
