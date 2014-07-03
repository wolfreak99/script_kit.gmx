///in_range(input,min,max)
//Input: Number to check (middle)
//Min: Number that input must be above (left)
//Max: Number that input must be below (right)
//Example: in_range(2,1,5) = 2 between 1 and 3 = true
//Example: in_range(2,3,5) = 2 is not between 5 and 3 = false
if (argument0 > argument1)
    if (argument0 < argument2)
        return true;

return false;
