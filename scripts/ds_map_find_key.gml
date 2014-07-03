///ds_map_find_key(map,value)
var map, value, m, i;
map = argument0;
value = argument1;
m = ds_map_find_first(map);
for(i = 0; i < ds_map_size(map); i += 1)
{
    //return if it's a match.
    if (ds_map_find_value(map, m) == value)
        return i;
    m = ds_map_find_next(map, m)
}
// return if it's a match.
if (m == argument0)
    return i;
// Return null
return noone;
