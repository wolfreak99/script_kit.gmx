///music_change(song_index,loop,stop_other_sounds)
/***************************************************
  USEAGE:
    Allows you to turn on a song while also being
    able to loop it and even stop all the other playing
    sounds.
  ARGUMENTS:
    song_index (sound / number) = song you wish to play.
    loop* (bool) = if true, sound will loop. (optional, default is false)
    stop_other_sounds* (bool) = Stops all sounds before playing new song. (optional, default is false)
  NECESSARY VARIABLES:
    global.music_previous
    global.music
    (Assign any sound to them, it doesn't matter.)
    (You can also check the scrkit_preloader for info and all variables
    needed for all of the scripts provided.)
***************************************************/

//Workaround for argument issue (mentioned in about)
if (argument_count == 0)
    show_error("MUSIC_CHANGE WITH NO SONG? REALLY? " + object_get_name(object_index), true);

//Switched to just exit script alltogether if sound is already playing..
//if !sound_isplaying(argument[0])
//    sound_stop(global.music)
if (sound_isplaying(argument[0]))
    exit;

sound_stop(global.music);
global.music_previous = global.music
global.music = argument[0]
var loop;
loop = false;
if (argument_count > 1)
{
    loop = argument[1]; 
    if (argument_count > 2)
        if (argument[2])
            sound_stop_all();
}
if (loop)
    sound_loop(global.music)
else
    sound_play(global.music)
