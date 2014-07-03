///multi_if(bool, bool*, bool*, bool*, bool*, bool*, bool*, bool*, bool*, bool*, bool*, bool*, bool*, bool*, bool*, bool*)
/***************************************************
  USEAGE: It is said that in multiple if statements, gamemaker checks
  each if, reguardless of what the others are.
  This means that if you have
  if (1 > 3 && 2 > 3 && 3 > 3 && 4 > 3 && 5 > 3)
  it will ceck all 5 if statements, even though
  ideally it should stop after the first one being returned false.
  the recommended way to go about it is to nest each if in,
  that is, change the above to
  if (1 > 3)
    if (2 > 3)
        if (3 > 3)
            if (4 > 3)
                if (5 > 3)
  that way it will only continue checking the others if the previous is true.
  This is an attempt to do the nested example in one line.
  MODNOTE: I'm pretty sure I probably wrote this script while I was drunk,
  I'm not sure if it would be useful or if it would compensate speed,
  since it would check argument count per argument.. but I left it anyway.
***************************************************/
var i, is_true;
is_true = true;
i = 0;
while is_true
{
    is_true = argument[i];
    if (i < argument_count)
        i += 1;
}
return is_true;
