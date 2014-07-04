///draw_button1_ext(x,y,width,height,string)
/***************************************************
  USEAGE: Creates a button with (currently defined via script) colors
  and alphas, and interracts with the mouse and keyboard (you'll have to
  define your own keyboard up/down control)
  
  Place in create:
    btn_selected = -1;
  
  Place in draw (or w/e event), BEFORE calling buttons:
    btn_int = 0;
  
   
  Use script like:
    if (room_width / 2, room_height / 2, 50, 10, "Reset", keyboard_check_pressed(vk_enter))
        game_restart();
  
 ***************************************************/

//INITIALIZE
var xx, yy, text, width, height, rect_x, rect_y, rect_x2, rect_y2,
        mousex, mousey, key_choose, chose_via_key, chose_via_mouse,
        btn_state, btn_alpha, btn_color, txt_alpha, txt_color;

xx = argument0;
yy = argument1;
text = argument4;

//This is what determines the "choosing"
chose_via_key = keyboard_check_pressed(vk_enter);
chose_via_mouse = mouse_check_button_pressed(mb_left);

//This is set to choose the biggest between the width/height provided or the string width/height.
width = max(argument2, string_width(text) + 2);
height = max(argument3, string_height(text) + 2);

//if you want to use a different coordinate for mouse, change this.
mousex = mouse_x;
mousey = mouse_y;

// TO CUSTOMIZE COLOR/ALPHAS: comment out the next two lines (starts with "var")
//and move the following color/alpha settings outside of script (must be declared at least once before calling this script).
var btn_alpha_off, btn_color_off, btn_alpha_hover, btn_color_hover, btn_alpha_press, btn_color_press;
var txt_alpha_off, txt_color_off, txt_alpha_hover, txt_color_hover, txt_alpha_press, txt_color_press;

btn_alpha_off = 0.2;
btn_color_off = c_white;
btn_alpha_hover = 0.5;
btn_color_hover = c_white;
btn_alpha_press = 1;
btn_color_press = c_white;
txt_alpha_off = 1;
txt_color_off = c_black;
txt_alpha_hover = 1;
txt_color_hover = c_black;
txt_alpha_press = 1;
txt_color_press = c_black;

//Customized color/alpha ends here.
rect_x = xx - (width / 2);
rect_y = yy - (height / 2);
rect_x2 = xx + (width / 2);
rect_y2 = yy + (height / 2);

//SETUP
//DETERMINE BUTTON STATE
if (btn_selected == btn_int)
{
    if (chose_via_key)
        btn_state = BTN_PRESS
    else
        btn_state = BTN_HOVER
}
else
{
    btn_state = BTN_OFF
    if mousex > rect_x
        if (mousex < rect_x2)
            if (mousey > rect_y)
                if (mousey < rect_y2)
                    {
                        btn_selected = -1; //"unselects" any button selected via keyboard.
                        if (chose_via_mouse)
                            btn_state = BTN_PRESS
                        else
                            btn_state = BTN_HOVER
                    }
}

//ASSIGN DISPLAY VARIABLES ACCORDINGLY
switch btn_state
{
    case BTN_OFF:
        btn_alpha = btn_alpha_off;
        btn_color = btn_color_off;
        txt_alpha = txt_alpha_off;
        txt_color = txt_color_off;
        break;
    case BTN_HOVER:
        btn_alpha = btn_alpha_hover;
        btn_color = btn_color_hover;
        txt_alpha = txt_alpha_hover;
        txt_color = txt_color_hover;
        break;
    case BTN_PRESS:
        btn_alpha = btn_alpha_press;
        btn_color = btn_color_press;
        txt_alpha = txt_alpha_press;
        txt_color = txt_color_press;
        break;
    default:
        show_exception_unknown_variable("btn_state", btn_state, "draw_button_ext", true);
        break;
}
//DRAW
draw_set_falign(fa_center, fa_center);

//draw box
draw_set_1(btn_alpha, btn_color);
draw_rectangle(rect_x, rect_y, rect_x2, rect_y2, false);

//draw text
draw_set_1(txt_alpha, txt_color);
draw_text(xx, yy, text);

//finished drawing, i can has original colors?
draw_set_reset();

//increase keyboard navigation integer for next button.
btn_int += 1;

//handle what to return
if (btn_state == BTN_PRESS)
{
    io_clear();
    return true;
}
else
    return false;
