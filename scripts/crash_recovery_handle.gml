///crash_recovery_handle(do_write,message*)
/***************************************************
  Useage:
  Creates/loads a crash ini file that allows you to store
  some basic information which can be used to reload
  some of the players game progress.
  This is a basic example containing a few stuff.
  NOTE: Make sure to only include as little amount of
  variables as you can. Such as the life, score, and current room.
  Example: If the game crashed because a player pressed a button,
  you do not want to reload the player back on that same button or
  it might crash again.
 ***************************************************/
var file_name, dowrite, crash_message;
file_name = "game_crash_file.ini"
do_write = argument[0]
crash_message = "N/A"
if (do_write)
{
    crash_message = argument[1]
    if file_exists(file_name)
        file_delete(file_name)
}
else
{
    if !file_exists(file_name)
    {
        exit;
    }
}
ini_open(file_name)
//create some temporary variables that get used when recovering
var _room, _crash_message, _crash_time;
//write your variables here
_room = ini_handle_var(do_write, _h, "room", room) //Do not switch rooms until ini is closed..
lives = ini_handle_var(do_write, _h, "lives", lives)
health = ini_handle_var(do_write, _h, "health", health)
score = ini_handle_var(do_write, _h, "score", score)
_crash_message = ini_handle_var(do_write, _h, "crash_message", crash_message)
_crash_time = ini_handle_var(do_write, _h, "crash_time", current_time)
//Write your save/load variables above
ini_close()
if (!do_write)
{
    //This handles anything that should be done after the ini close.
    show_message("The game had previously crashed at '" + string(_crash_time)
        + "', with the following message:#" + string(_crash_message)
        + "##Some of your game play progress has been recovered."
        + "###If you have not contacted me about this, please do so so I can fix this. "
        + "#Again I am personally sorry for this happening and for any progress that was not recovered")
    if room_exists(_room)
        room_goto(_room)
}
