///bool_to_string(value)
if (string(argument0) == "1") or (string_lower(argument0) == "true")
    return "true"
else if (string(argument0) == "0") or (string_lower(argument0) == "false")
    return "false"
else
    return "unknown"
