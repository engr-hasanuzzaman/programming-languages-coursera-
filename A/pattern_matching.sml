(* list sum using pattern matching*)
fun p_sum(l: int list): int = 
    case l of 
        [] => 0
      | x::xs => x + p_sum(xs)

(* list rev fun *)
fun p_reverse(l: int list): int list = 
    case l of 
        [] => []
      | x::xs => p_reverse(xs)@[x]

(* lins size *)
fun length l =
  case l of 
  nil => 0
  | _::xs => 1 + (length xs)

(* val declaretion also pattern matching *)
val (x, y, z) = (1,2,3)

(* zip & unzip *)
exception NotEqualLength

fun zip3(lists) = 
  case lists of 
  ([],[],[]) => []
  | (h1::t1, h2::t2, h3::t3) => (h1, h2, h3)::zip3(t1, t2, t3)
  | _ => raise NotEqualLength

(* N.B: Notice, in function pattern = is used instead of => *)
(* length using function pattern *)
fun f_length nil = 0
  | f_length(h::t) = 1 + f_length(t)

(* function patter for append *)
fun append([], ys) = ys
  | append(x::xs, ys) = x :: append(xs, ys)

(* exception handling *)
(* hanld exception, so it will contain [] *)
val it = zip3([1], [1,2], []) handle NotEqualLength => []