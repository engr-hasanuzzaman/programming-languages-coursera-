(* 
Write a function greeting : string option -> string|greeting : string option -> string that given a string option 
SOME name returns the string "Hello there, ...!"|"Hello there, ...!" where the dots would be replaced by name. Note that the name is given as an option, 
so if it is NONE then replace the dots with "you".
 *)

 fun greeting(name) = 
    if isSome name
    then "Hello there, " ^ valOf(name) ^ "!"
    else "Hello there, you!"

