(* countdown input 7 -> [7,6,5,4,3,2,1] *)
fun countdown(n: int) =
  if n = 1
  then [1]
  else n::countdown(n-1)