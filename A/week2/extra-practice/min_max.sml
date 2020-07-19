(* 
    Write a function min_max : int list -> int * int|min_max : int list -> int * int that takes a non-empty list of numbers, and returns a pair 
(min, max) of the minimum and maximum of the numbers in the list.
*)

fun min_max(l: int list) =
    let 
        fun max(l: int list) = 
            if null (tl l)
            then hd l
            else let
                    val max_tail = max(tl l)
                 in
                    if max_tail > hd(l)
                    then max_tail
                    else hd l
                 end
        fun min(l: int list) =
            if null (tl l)
            then hd l
            else let
                    val min_tail = min(tl l)
                 in
                    if min_tail > hd(l)
                    then hd l
                    else min_tail
                 end 
        in
            (min(l), max(l))
        end