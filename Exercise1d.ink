/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1, Midmorning, 2 Noon, 3 afternoon, 4 evening, 5 Night


-> seashore

== seashore ==
You are sitting on the beach. 

It is {advance_time()}

+ [Stroll down the beach] -> beach2
+ {time == 2} [Pick up some seashells] -> shells
+ {time == 4} [Pick up an odd-looking red orb] -> orb


-> DONE

== beach2 ==
This is further down the beach.

It is {advance_time()}

+ {time == 1} [Pick up some seashells] -> shells
+ {time == 3} [Pick up an awesome looking sword] -> sword
+ {time == 5} [Pick up a miniature version of Lightning McQueen] -> mcqueen

+ [Move back up the beach] -> seashore

== shells ==
You pick up the shells
-> beach2

== sword == 
I can't wait to use this in the backyard 
-> beach2

== orb == 
As you go to pick the orb up, it explodes. You died... 
-> END 

== mcqueen == 
McQueen says one thing and one thing only: Ka-chow 
->beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 5:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Midmorning"
        
        - time == 2:
            ~ return "Noon"
            
        - time == 3:
            ~ return "Afternoon"
            
        - time == 4:
            ~ return "Evening"
        
        - time == 5:
            ~ return "Night"
    
    }
    
        
    ~ return time
    
    
    
