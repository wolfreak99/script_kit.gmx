/*
---REALLY IMPORTANT::---------
If you have Gamemaker Studio, create a new constant called 
"gamemaker_version" with "1000" for the value or some scripts won't not work!!
------------------------------
(I've taken an hour or so writing this, so I'd appreciate if you read it.. Thank you.)
THIS IS XCYBERFANG/WOLFREAK_99'S SCRIPT KIT:
These are a bunch of scripts that I have created with the idea
to help out the process of writing codes.

It ranges from shortening multiplelines of common codes down to one line (drawing > additional > draw_set_3/draw_set_reset),
to shortening lengthy functions ("controls > keyboard > key_pressed"),
to getting and setting global variables (think gamemaker 8.1 and below) ("strings_and_vars > vars"),
to showing one of two strings based on a boolean ("strings_and_variables > conversions > bool_to_string")
to providing a detailed error message witha backup function ("error_scripts > make_error_text")
to checking if numbers are in given order from left to right ("strings_and_variables > reals"),
to sophisticated error message with a backup function ("error_scripts > make_error_text"),
to checking integer variables to see if they are in the given order (from left to right) ("strings_and_variables > reals > in_order")
to converting dataset types and or mimicing dataset actions on different dataset types ("datasets"),
to simplify reading and writing ini files to one line for both raeding and writing ("ini_handling > ini_handle_var")


As of writing this, the only scripts that I can think of that
I did NOT write (but included anyways because I found them very
useful myself) are the following:
    - Approach (got from Grandma platformer engine)
Aside from the above, I have wrote all of the scripts myself over the span of maybe 3 - 4 months.


------------------------------------------------------------------
------------------------------------------------------------------
FEEL FREE TO SKIP TO HERE
------------------------------------------------------------------
------------------------------------------------------------------
INTELLISENSE SUPPORT:
If you have a version of GameMaker Studio with the script intellisense support
(Mine is 1.3.1307, idk when it came in though), All of my scripts will provide arguments.
If you have GameMaker 8.1, I will be creating an extension soon that will 
provide equivalent intellisense support (though if you're patient, I got you covered more... youtu.be/fwNTEnlKwuE )

DOCUMENTATION:
I also have the majority of the scripts with notes and documentation. Some are really detailed,
some are simple, some mightnot have any yet. This originally started out for my personal use, until I realized how much
I use these and how much I have made over the few months..

"THE BROKEN ARGUMENT ISSUE":
You'll see in alot of the scripts I keep mentioning "workaround for the broken argument issue", 
What I'm talking about by this is, when YoYoGames bought gamemaker, they broke ALOT of shit, bad.
I don't need to prove myself on this, look at how many extensions were destroyed, and how little of amount
of extensions/plugins/etc exist for gamemaker studio, (and most of the GMS ones are mediocre at most)
One of the things they destroyed is the ability to have both required arguments and optional arguments.
Usually if you forget an argument, you're notified about it on compile.
Now, unfortunately it's not possible anymore. You have to test the code out and when it's executed, you'll then realize
you might have missed something becausemore likely it' will misbehave.
In order to compensate for this, any scripts with optional and "required" arguments will have an error show up
if you forget one. This info will show the error stack (in gamemaker studio), and it will show what object and event
triggered it. I hope this helps in some degree. 

PRELOADING:
Some scripts require certain variables to be loaded before they're used. Many times,
people will create a room at the verystart that loads a bunch of variables and then jumps into the game.
This is usually with the room creation code, a obj_preloader, or whatever. If you want to load all of the variables
necessary to use all of the scripts, you can link the scrkit_preloader to your own preloader part.
You will also need some object that reads when the game ends (I usually use an ctrl_game object that's in each
room), so you can execute the scrkit_unloader at the end of the game.

CONSTANTS:
Like the previous certain variables, there are some constants I use when making stuff. While
I could technically use variables, I find constants useful for these as they'll show up in the autocomplete
box plus they are highlighted a color different from plain text. I have stored all the necessary
constants (and a few more) into the constants file. If you save it as a text file, you should be able to
import it into the constants dialog on gamemaker.
Or, well, I guess you could just always link back to the constants script, but why would you want to do that?
While I have tested almost all of them at least maybe once or twice (I make these for scenarios I encounter),
I cannot say i have thuroughly tested each and every one of them. If you find any issues.. Please let me know
or feel free to lend a hand..
