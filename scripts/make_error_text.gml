///make_error_text(string_reason)
/***************************************************
  Useage: allows a more personalized error message.
  How to use:
  show_error(make_error_text("Object doesn't match X"), true)
 ***************************************************/
//MAKE SURE TO INSERT SOME SAVE MECHANIC FOR THE SAKE OF YOUR PLAYERS!!!
var error_string, no_error_message, message_string;
error_string = "";
no_error_message = false;
if (argument_count == 0)
    no_error_message = true;
else
    if (string(argument[0]) == "")
        no_error_message = true;
if (no_error_message)
    error_string = "No custom error message was provided. I was too lazy here...";
else
    error_string = "The error is:
" + string(argument[0]);
crash_recovery_handle(true, error_string);
message_string = "
Uh oh! An error has occured! D:
YOUR PRGRESS HAS BEEN SAFELY SAVED THIS TIME!!
If an ignore button is shown, you can try and press it. If this doesn't go away,
just reopen the game, and in the pause console (tap escape, then control), type
''RECOVERCRASH'', and you should be back to where you were.
THIS IS NOT YOUR FAULT!! 
If anything, I was probably drunk while writing this part of the game.
I'd appreciate if you could send this to me at jbminor1991@gmail.com
That way I can try to fix this problem.
-------------
" + error_string + "
Object Name: " + string(object_get_name(object_index)) + "
Object X/Y: " + string(x) + "/" + string(y) + "
Room Name: " + string(room_get_name(room)) + "
Event Info:
" + get_event_info() + "
------------
";
return message_string;
