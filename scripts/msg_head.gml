///msg_head(string)
/***************************************************
  Useage:
  This allows you to place show_messages in scripts
  and have an idea on what object is causing the message to appear.
  What does this poorly wrote description mean?
  Say you have a script called feed_character_apple()
  which is a pretty broad script, and there are many
  uses it could have.
  along the line you start to notice an issue so you use a message
  box to catch the bug. but even after that, you won't know exactly
  what object or character or event is triggering this, and you have
  the script sprawled through alot of other objects as well.
  If you do "show_message(msg_head("There was an issue here"))",
  it will give you the object name that's calling it, and give you some event
  information.
 ***************************************************/
return argument0 + "(called via " + object_get_name(object_index) + " in event " + string(get_event_info()) + ":##"
