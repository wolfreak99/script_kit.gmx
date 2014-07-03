///views_are_default()
/***************************************************
  USEAGE:
    By default, the views are set to not be visible, and
    have a width/height of 640/480. this checks each
    view and determines if each setting is still the default
    value. If a view is found that's not default, it will
    not search the rest of the views, as it's not necessary.
    For checking specific views, use view_is_default
  Returns: boolean
 ***************************************************/
var i, is_true, check_all, v;
is_true = true
check_all = true
if (argument_count > 0)
    if argument[0] != all
        check_all = false
//MODNOTE EDIT: In order to increase speed, check_all is
//  only checked once.
if (check_all)
{
    for (i = 0; (i < 8) && is_true; i++)
    {
        v = i
        is_true = false
        if (view_visible[v] == false)
            if (view_wview[v] == 640)
                if (view_hview[v] == 480)
                    is_true = true
    }
}
else
{
    for (i = 0; i < argument_count - 1; i++)
    {
        v = argument[i]
        is_true = false
        if (view_visible[v] == false)
            if (view_wview[v] == 640)
                if (view_hview[v] == 480)
                    is_true = true
    }
}
return is_true
