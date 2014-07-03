///actionkey(action)
/***************************************************
  USEAGE:
  I like assigning action keys to Z, X, C.
  I'm pretty sure this script was just me being drunk.
  
***************************************************/
var jumpkey, runkey, duckkey;
jumpkey = ord("Z");
runkey = ord("X");
duckkey = ord("C");
switch string_lower(argument0)
{
    case "jump": return jumpkey;
    case "run": return runkey;
    case "duck": return duckkey;
}
