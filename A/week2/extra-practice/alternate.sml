(* Write a function alternate : int list -> int 
   that takes a list of numbers and adds them with alternating sign. 
   For example alternate [1,2,3,4] = 1 - 2 + 3 - 4 = -2
   For example alternate [9,8,7,6,5,4] = 9 - 8 + 7 - 6 + 5 - 4 = 3
   alternate [4,~5,~9,2,10] = 4 + 5 - 9 - 2 + 10 = 8
*)

fun alternate(l: int list) = 
    if null l
    then 0
    else hd(l) - alternate(tl l)
     