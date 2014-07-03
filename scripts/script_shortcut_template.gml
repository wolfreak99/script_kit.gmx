///script_shortcut_template(whatever,you,want,here)
/***************************************************
  To use this:
  1) Rename to what you want.
  2) Remove /* on line 9
  2) customize line 1 to what you want (make sure name matches EXACTLY)
  3) on line 21, replace "SCRIPT_NAME_HERE" with what script you want.
 ***************************************************/
/*
//This will make it compatible with gamemaker studio, since blanks
//are no longer initialized with 0. This initializes blanks with "".
var a, i;
for (i = 0; i < 16; i++)
{
    if (i < argument_count)
        a[i] = argument[i]
    else
        a[i] = ""
}
return SCRIPT_NAME_HERE(a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15])
