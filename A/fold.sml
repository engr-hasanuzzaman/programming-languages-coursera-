(* sum *)
fun fold(f, acc, l) = 
    case l of
        [] => acc
    | hd::tl => fold(f, f(acc, hd), tl)

(* sum of the list *)
val s = fold((fn (x, y) => x + y), 0, [1,2,3,4]) = 10 

(* procut of the list *)
val s = fold((fn (x, y) => x * y), 1, [1,2,3,4]) = 24

(* val s = fold(fn()) *)