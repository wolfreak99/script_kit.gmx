///number_scroll(int_value,int_increment,int_maximum,bool_increase,bool_decrease)
/***************************************************
  MAKE SURE TO RETURN IT TO THE SAME VARIABLE THAT IS IN int_value!
  
  USEAGE
  Modifies a number (value) by a certain amount (increment) depending on
  the state of bool_increase and dodecrease, all while not exceeding a number (maximum)
  To give a better idea of the useage, many times people will want to
  change a variable (say, the selector variable for a menu) when a key is pressed,
  while making sure it exceed a number (the amount of buttons on said menu).
  This script allows you to sum what usually would be a bit of lines
  down to just one line (remember when I said this script kit is for the lazy?)
  
  It also might run quicker as it uses no if statements, just multiplication, but not sure.
  
  Before:
    if keyboard_check_pressed(vk_down)
    {
        if my_number < 5
            my_number += 1
        else
            my_number = 0
    }
    if keyboard_check_pressed(vk_up)
    {
        if my_number > 0
            my_number -= 1
        else
            my_number = 5
    }
  After:
    my_number = (my_number + ((keyboard_check_pressed(vk_down) * 1) + (keyboard_check_pressed(vk_up) * (5 - 1)))) mod 5
  Script useage:
    my_number = number_scroll(my_number, 1, 5, keyboard_check_pressed(vk_down), keyboard_check_pressed(vk_up))
  **************************************************/

return (argument0 + ((argument3 * argument1) + (argument4 * (argument2 - argument1)))) mod argument2;
