(* sum *)
fun fold(f, acc, l) = 
    case l of
        [] => acc
    | hd::tl => fold(f, f(acc, hd), tl)

val s = fold((fn (x, y) => x + y), 0, [1,2,3,4]) = 10 