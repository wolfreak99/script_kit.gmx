///string_to_bool(value)
if (string(argument0) == "1") or (string_lower(argument0) == "true")
    return 1
else if (string(argument0) == "0") or (string_lower(argument0) == "false")
    return 0
else
    return 0
