///get_key_string(key)
switch (argument0) {
    case vk_add: return "add";
    case vk_alt: return "alt";
    case vk_anykey: return "anykey";
    case vk_backspace: return "backspace";
    case vk_control: return "control";
    case vk_decimal: return "decimal";
    case vk_delete: return "delete";
    case vk_divide: return "divide";
    case vk_down: return "down";
    case vk_end: return "end";
    case vk_escape: return "escape";
    case vk_f1: return "f1";
    case vk_f10: return "f10";
    case vk_f11: return "f11";
    case vk_f12: return "f12";
    case vk_f2: return "f2";
    case vk_f3: return "f3";
    case vk_f4: return "f4";
    case vk_f5: return "f5";
    case vk_f6: return "f6";
    case vk_f7: return "f7";
    case vk_f8: return "f8";
    case vk_f9: return "f9";
    case vk_home: return "home";
    case vk_insert: return "insert";
    case vk_lalt: return "lalt";
    case vk_lcontrol: return "lcontrol";
    case vk_left: return "left";
    case vk_lshift: return "lshift";
    case vk_multiply: return "multiply";
    case vk_nokey: return "nokey";
    case vk_numpad0: return "numpad0";
    case vk_numpad1: return "numpad1";
    case vk_numpad2: return "numpad2";
    case vk_numpad3: return "numpad3";
    case vk_numpad4: return "numpad4";
    case vk_numpad5: return "numpad5";
    case vk_numpad6: return "numpad6";
    case vk_numpad7: return "numpad7";
    case vk_numpad8: return "numpad8";
    case vk_numpad9: return "numpad9";
    case vk_pagedown: return "pagedown";
    case vk_pageup: return "pageup";
    case vk_pause: return "pause";
    case vk_printscreen: return "printscreen";
    case vk_ralt: return "ralt";
    case vk_rcontrol: return "rcontrol";
    case vk_return: return "return";
    case vk_right: return "right";
    case vk_rshift: return "rshift";
    case vk_shift: return "shift";
    case vk_space: return "space";
    case vk_subtract: return "subtract";
    case vk_tab: return "tab";
    case vk_up: return "up";
    //NO-CONSTANT KEYS
    case 144: return "numlock";             // numberlock
    case 12: return "numpad 5 (NL off)";    // Numberpad's 5 when numberlock is off
    case 220: return "\";                   // backslash \
    case 189: return "-";                   // subtract on keyboard
    case 187: return "=";                   // equal on keyboard
    case 192: return "`";                   // accent ( ` )
    case 20: return "capslock";             // capslock
    case 219: return "[";                   // [
    case 221: return "]";                   // ]
    case 186: return ";";                   // ;
    case 222: return "'";                   // '
    case 188: return "<";                   // <
    case 190: return ">";                   // >
    case 191: return "/";                   // /
    case 91: return "winkey";               // windows key
    case 3: return "break";                 // break
    case 145: return "scrollock"            // scrollock
    case 176: return "audio next";          // audio next
    case 177: return "audio prev";          // audio previous
    case 178: return "audio stop";          // audio stop
    case 179: return "audio play/pause";    // audio play/pause
    case 174: return "volume down";         // volume down
    case 175: return "volume up";           // volume up
    default: return chr(argument0);
}
