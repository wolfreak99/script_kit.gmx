///script_execute_string(string)
/***************************************************
  WARNING: CURRENTLY EXTREMELY UNSTABLE, CAN CRASH, AND PROBABLY WILL.
  I'M SERIOUS. I'M NOT TALKING UNSTABLE CRASH, I'M TALKING
  YOUR-TAXI-DRIVER-SMELLING-LIKE-VODKA TYPE OF CRASH.

  USEAGE:
    CRASHES YOUR GAME.
    
  REAL USEAGE:
    An attempt to mimic the old gamemaker 8.1< script_execute 
  
    Currently only supports scripts within the game. But this kit has 150 so hey.
    Also only supports calling one script, no nested scripts yet.
    Also doesn't allow declaring variables.
    Also doesn't get local variables.
    Pretty much it does nothing so far.
    But "show_message_(hello)" works, so,, hello.
***************************************************/

var str, paren, scr_name, string_vars, my_vars, var_count, a, s;
str = argument0
paren = string_pos("(", str);
scr_name = string_copy(str, 1, paren - 1);
string_vars = string_remove(string_copy(str, paren + 1, string_length(str) - paren - 1), " ");
my_vars = string_explode_ext(string_vars, ",");
var_count = array_length_1d(my_vars);

//Convert stringed arrays to number and/or asset arrays appropriately.
for (i = 0; i < var_count; i += 1)
{
    if string_is_number(my_vars[i])
        a[i] = real(my_vars[i]);
    if (asset_get_index(my_vars[i]) != -1)
        a[i] = asset_get_index(my_vars[i]);
    else
        a[i] = my_vars[i];
}


s = asset_get_index(scr_name);
if (s == -1)
{
    show_message(scr_name + " not found!");
    exit;
}
switch var_count
{
    default: show_message("Only 16 arguments allowed, will do 16.");
    case 16: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[12],a[13],a[14],a[15]);
    case 15: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[12],a[13],a[14]);
    case 14: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[12],a[13]);
    case 13: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[12],a[13]);
    case 12: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[12]);
    case 11: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10]);
    case 10: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9]);
    case 9: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8]);
    case 8: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7]);
    case 7: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5],a[6]);
    case 6: return script_execute(s,a[0],a[1],a[2],a[3],a[4],a[5]);
    case 5: return script_execute(s,a[0],a[1],a[2],a[3],a[4]);
    case 4: return script_execute(s,a[0],a[1],a[2],a[3]);
    case 3: return script_execute(s,a[0],a[1],a[2]);
    case 2: return script_execute(s,a[0],a[1]);
    case 1: return script_execute(s,a[0]);
    case 0: return script_execute(s);
}
