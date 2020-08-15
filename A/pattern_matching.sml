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