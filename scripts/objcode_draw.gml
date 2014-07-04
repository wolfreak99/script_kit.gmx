///code called for draw
draw_self();

//These are variables used for the next 3 buttons. There's only one measurement since the button strings are the same length..
button_width = string_width("button5") + 4;
button_height = string_height("button5") + 4;
button_x = room_width / 2;
//The btn_int is increased as the buttons are built.. So you want to make this 0.
btn_int = 0;
if (btncustom_ext(button_x, 50, button_width, button_height, "button0"))
{
    show_message("Button 0 pressed");
}
if (btncustom_ext(button_x, 100, button_width, button_height, "button1"))
{
    show_message("Button 1 pressed");
}
if (btncustom_ext(button_x, 150, button_width, button_height, "button2"))
{
    show_message("Button 2 pressed");
}

btn_selected = number_scroll(btn_selected, 1, btn_int, key_pressed(vk_down), key_pressed(vk_up));
