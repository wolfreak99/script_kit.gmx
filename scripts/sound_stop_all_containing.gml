///sound_stop_all_containing(prefix)
//Prefix = what should the sound file name contain if it's to be stopped?
var i;
i = 0;
while (true)
{
    if (sound_exists(i))
    {
        if (sound_isplaying(i))
            if (string_pos(argument0, sound_get_name(i)) != 0)
                sound_stop(i);
        i += 1;
    }
    else
        break;
}
