///keymap_set(def,new,new*,new*,new*,new*,new*,new*,new*,new*,new*,new*,new*,new*,new*)
//Simply keyboard_set_map_multi but shortened
//generate blanks for empty variables.
var a, i;
for (i = 0; i < 16; i++;)
{
    if (i < argument_count)
        a[i] = argument[i]
    else
        a[i] = ""
}
return keyboard_set_map_multi(a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15])
