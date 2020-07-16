(* countdown input 7 -> [7,6,5,4,3,2,1] *)
fun countdown(n: int) =
  if n = 1
  then [1]
  else n::countdown(n-1)

(* list rev input [1,2,3,4] -> [4,3,2,1] *)
fun rev_list(l: int list) = 
  if null l
  then []
  else rev_list(tl l) @ [hd l] 

(* rev countdown input 7 -> [1,2,3,4,5,6,7,8] *)
fun rev_countdown(n: int) =
  if n = 1
  then [1]
  else rev_countdown(n-1) @ [n]