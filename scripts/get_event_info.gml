///get_event_info(show_in_message)
//This is to figure out which event constant matches the argument provided.
//If you type "ev_", a poppup will show listing all the constants.
//However, there is "event_type", "event_number", "event_action", "event_object", and someteimes
//the constants return false positives if it's not checking the right style of event (like, ev_create is 0
//and if you check something else and it's false, it might read the same as ev_create. if that makes any sense lol)
//To use this, simply place "checkEvent()" inside a code block on any event, and when that event is activated
//This will return the event info and numbers.

var STR_NULL, STR_NA, STR_EVENT_NUMBER_UNKNOWN, STR_EVENT_TYPE_UNKNOWN, STR_EVENT_NUMBER_KEYBOARD_STRING,
        e_number, e_type, e_action, e_object, e_object_match, ret_string, show_in_message;

//create constants.
STR_NULL = "NULL";
STR_NA = "N/A";
STR_EVENT_NUMBER_UNKNOWN = "event_number unknown";
STR_EVENT_TYPE_UNKNOWN = "event_type unknown";
STR_EVENT_NUMBER_NONE = STR_NA //some event_types have matching event_numbers (ie. draw has draw)

//For ev_keypress, ev_keyrelease, and ev_keyboard
STR_EVENT_NUMBER_KEYBOARD_STRING = "keyboard_lastkey: " + string(keyboard_lastkey) +
        "; keyboard_lastchar: " + string(keyboard_lastchar);

//Nullify message strings
e_number = STR_NA;
e_type = STR_NA;
e_action = STR_NA;
e_object = STR_NA;
e_object_match = STR_NA;

//Nullify and determine argument settings
show_in_message = false
switch argument_count
{
    case 1: show_in_message = argument[0]; break;
}
//Match event_type (and event_number if necessary)
switch event_type
{
    case ev_create: e_type = "ev_create"; break;
    case ev_destroy: e_type = "ev_destroy"; break;
    case ev_step: e_type = "ev_step"; break;
        switch event_number
        {
            case ev_step_normal: e_number = "ev_step_normal"; break;
            case ev_step_begin: e_number = "ev_step_begin"; break;
            case ev_step_end: e_number = "ev_step_end"; break;
            default: e_number = STR_EVENT_NUMBER_UNKNOWN; break;
        }
        break;
    case ev_alarm: e_type = "ev_alarm"; e_number = "Alarm Number"; break;
    case ev_keyboard: e_type = "ev_keyboard"; e_number = STR_EVENT_NUMBER_KEYBOARD_STRING; break;
    case ev_keypress: e_type = "ev_keypress"; e_number = STR_EVENT_NUMBER_KEYBOARD_STRING; break;
    case ev_keyrelease: e_type = "ev_keyrelease"; e_nmber = STR_EVENT_NUMBER_KEYBOARD_STRING; break;
    case ev_mouse:
        e_type = "ev_mouse";
        switch event_number
        {
            case ev_left_button: e_number = "ev_left_button"; break;
            case ev_right_button: e_number = "ev_right_button"; break;
            case ev_middle_button: e_number = "ev_middle_button"; break;
            case ev_no_button: e_number = "ev_no_button"; break;
            case ev_left_press: e_number = "ev_left_press"; break;
            case ev_right_press: e_number = "ev_right_press"; break;
            case ev_middle_press: e_number = "ev_middle_press"; break;
            case ev_left_release: e_number = "ev_left_release"; break;
            case ev_mouse_enter: e_number = "ev_mouse_enter"; break;
            case ev_mouse_leave: e_number = "ev_mouse_leave"; break;
            case ev_mouse_wheel_up: e_number = "ev_mouse_wheel_up"; break;
            case ev_mouse_wheel_down: e_number = "ev_mouse_wheel_down"; break;
            case ev_global_left_button: e_number = "ev_global_left_button"; break;
            case ev_global_right_button: e_number = "ev_global_right_button"; break;
            case ev_global_middle_button: e_number = "ev_global_middle_button"; break;
            case ev_global_left_press: e_number = "ev_global_left_press"; break;
            case ev_global_right_press: e_number = "ev_global_right_press"; break;
            case ev_global_middle_press: e_number = "ev_global_middle_press"; break;
            case ev_global_left_release: e_number = "ev_global_left_release"; break;
            case ev_global_right_release: e_number = "ev_global_right_release"; break;
            case ev_global_middle_release: e_number = "ev_global_middle_release"; break;
            default: e_number = STR_EVENT_NUMBER_UNKNOWN; break;
        }
        break;
    case ev_collision:
        e_type = "ev_collision";
        ev_number = "Collision with: " + object_get_name(other.object_index);
        break;
    case ev_other:
        e_type = "ev_other";
        switch event_number
        {
            case ev_outside: e_number = "ev_outside"; break;
            case ev_boundary: e_number = "ev_boundary"; break;
            case ev_game_start: e_number = "ev_game_start"; break;
            case ev_game_end: e_number = "ev_game_end"; break;
            case ev_room_start: e_number = "ev_room_start"; break;
            case ev_room_end: e_number = "ev_room_end"; break;
            case ev_no_more_lives: e_number = "ev_no_more_lives"; break;
            case ev_no_more_health: e_number = "ev_no_more_health"; break;
            case ev_animation_end: e_number = "ev_animation_end"; break;
            case ev_end_of_path: e_number = "ev_end_of_path"; break;
            case ev_close_button: e_nmber = "ev_close_button"; break;
            case ev_user0: e_number = "ev_user0"; break;
            case ev_user1: e_number = "ev_user1"; break;
            case ev_user2: e_number = "ev_user2"; break;
            case ev_user3: e_number = "ev_user3"; break;
            case ev_user4: e_number = "ev_user4"; break;
            case ev_user5: e_number = "ev_user5"; break;
            case ev_user6: e_number = "ev_user6"; break;
            case ev_user7: e_number = "ev_user7"; break;
            case ev_user8: e_number = "ev_user8"; break;
            case ev_user9: e_number = "ev_user9"; break;
            case ev_user10: e_number = "ev_user10"; break;
            case ev_user11: e_number = "ev_user11"; break;
            case ev_user12: e_number = "ev_user12"; break;
            case ev_user13: e_number = "ev_user13"; break;
            case ev_user14: e_number = "ev_user14"; break;
            case ev_user15: e_number = "ev_user15"; break;
            default: e_number = STR_EVENT_NUMBER_UNKNOWN; break;
        }
        break;
    case ev_draw:
        e_type = "ev_draw";
        switch event_number
        {
            case 0: e_number = STR_EVENT_NUMBER_NONE; break; //main draw event
            case ev_gui: e_number = "ev_gui"; break;
            default: e_number = STR_EVENT_NUMBER_UNKNOWN; 
        }
        break;
    case ev_trigger: e_type = "ev_trigger"; break;
    default: e_type = STR_EVENT_TYPE_UNKNOWN; break;
}
/***************************************************
  MODNOTE TODO: figure out results for event_object
  From manual: event_object:
  This read-only variable returns object index of the instance which is running the event being checked.
 ***************************************************/
if object_exists(event_object)
    e_object_match = object_get_name(event_object)
//Generate string with information to show
ret_string = "event_type: " + e_type + " (" + string(event_type) + ") #" +
        "event_number: " + e_number + " (" + string(event_number) + ") #" +
        "event_action: " + e_action + " (" + string(event_action) + ") #" +
        "event_object: " + e_object + " (" + string(event_object) + ") " +
        "[object_index_match: " + e_object_match + "]"
//Generate message and debug message 
if (show_in_message)
{
    var CHAR_LB, CHAR_PB, dbg_msg_str, i, pos, lb_count;
    //show_message must always come before debug message,
    //because array generator destroys the msg_str variable
    show_message(ret_string);
    //Debug messages don't seperate on linebreaks
    //so manually generate array of each line (DESTROYS msg_str)
    //Set chars to vars
    CHAR_LB = "
" //DO NOT MODIFY LINE
    CHAR_PB = "#"
    dbg_msg_str = ret_string
    dbg_msg_str = string_replace_all(dbg_msg_str, CHAR_LB, CHAR_PB)
    lb_count = string_count(CHAR_PB, dbg_msg_str)
    for (i = 0; i < lb_count; i += 1)
    {
        pos = string_pos(CHAR_PB, dbg_msg_str);
        msg_array[i] = string_copy(dbg_msg_str, 1, pos - 1);
        dbg_msg_str = string_delete(dbg_msg_str, 1, pos);
    }
    show_debug_message("") //pretty spacer
    //print out each array in the debugger
    for (i = 0; i < array_length_1d(msg_array); i += 1)
        show_debug_message(msg_array[i]);
    show_debug_message("") //pretty spacer
}
//Lastly, return the ret_string.
return ret_string
