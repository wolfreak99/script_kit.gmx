///switch_room(room,isCustom)
//-3 if previous, -2 if restarting room, -1 if next, or a room if it's a custom room
var do_unique = false;
var room_number = argument[0]
if (argument_count == 2)
    if (argument[1])
        do_unique = true
if (argument[0] > 1)
    do_unique = true
if do_unique
{
    if (room_exists(room_number))
        room_goto(room_number)
    else
    {
        do_unique = false
        room_number = 0
    }
}
if (!do_unique)
{
    switch (argument[0])
    {
        case -1: if room_exists(room - 1) room_goto_previous() break;
        case 0: room_restart(); break;
        case 1: if room_exists(room + 1) room_goto_next(); break;
    }
}
