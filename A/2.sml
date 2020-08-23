
(* Dan Grossman, Coursera PL, HW2 Provided Code *)

(* if you use this function to compare two strings (returns true if the same
   string), then you avoid several of the functions in problem 1 having
   polymorphic types that may be confusing *)
fun same_string(s1 : string, s2 : string) =
    s1 = s2

(* a *)
fun all_except_option(target, l) = 
    case l of
        [] => NONE
    | hd::tl => if same_string(hd, target) then SOME tl
                else
                    case all_except_option(target, tl) of
                        NONE => NONE
                    | SOME tl => SOME(hd::tl)

(* get_substitutions1 *)
fun get_substitutions1(list, target) =
    case list of
        [] => []
    | hd::tl => case all_except_option(target, hd) of
                    NONE => get_substitutions1(tl, target)
                | SOME elm => elm @ get_substitutions1(tl, target)

(* [["a", "b", "c", "x"], ["d", "e", "f", "c"], ["z"], ["x", "c"]], "c" *)
(* put your solutions for problem 1 here *)

(* you may assume that Num is always used with values 2, 3, ..., 10
   though it will not really come up *)
datatype suit = Clubs | Diamonds | Hearts | Spades
datatype rank = Jack | Queen | King | Ace | Num of int 
type card = suit * rank

datatype color = Red | Black
datatype move = Discard of card | Draw 

exception IllegalMove

(* put your solutions for problem 2 here *)

