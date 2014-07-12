///ds_grid_find_range(id, x, y_start, matches)
/***************************************************
  USEAGE:
    Searches a grid for a column matching a given value,
    and then searches for the ending where the column is no
    longer matching a given value.
    
  VARIABLES:
    id - id of ds_grid
    x - the column to search in.
    y_start - determines what row to start at for searching (if you don't know, just put 0).
    matches - this is what it will be matching against.
    
  RETURN:
    array[0] - where the matching starts.
    array[1] - where the matching ends (the very next row)
    
  EXAMPLE:
    5, 10, 13
    5, 14, 12
    6, 3, 6
    3, 5, 7
    8, 1, 2
    8, 4, 5
    8, 6, 3
    9, 1, 4
    10, 3, 2
    ds_grid_find_range(list above, 0, 0, 8)
    output = 4, 7
 ***************************************************/

var ds_h, y_start, y_end, i;
y_start = 0;
y_end = 0;
ds_h = ds_grid_height(argument0)
for (i = argument2; i < ds_h; i += 1)
{
    if (y_start == 0)
    {
        if (ds_grid_get(argument0, argument1, i) == argument3)
            y_start = i;
    }
    if (y_end == 0)
    {
        if (y_start != 0)
            if (ds_grid_get(argument0, argument1, i) != argument3)
            {
                y_end = i;
                _ret[0] = y_start;
                _ret[1] = y_end;
                return _ret;
            }
    }
}

//Unable to find value, so returns null.
_ret[0] = -1;
_ret[1] = -1;
return _ret;

