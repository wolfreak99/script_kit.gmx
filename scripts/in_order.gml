//in_order(left, middle, right)
for (i = 2; i < argument_count; i += 1)
{
    if (argument[i - 2] >= argument[i - 1])
        return false;
    if (argument[i - 1] >= argument[i])
        return false;
}
return true;
