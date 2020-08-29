fun n_times(f, n, x) = 
    if n = 0 then x
    else f(n_times(f, n-1, x))

fun double(n) = n + n

val t = n_times(tl, 3, [1,2,3,4,5]) (* will return [4,5], here tl is array tail function*)

(* annonimous function *)
val tt = n_times((fn n => n + n), 3, 10) = 80

fun even n = n mod 2 = 0

val list = [1,2,3,4,5,6,7,8]
fun map([]) = []
    | map(hd::tl) = if even(hd) then hd::map(tl)
                    else map(tl)

fun select(f, l) = 
    case l of 
        [] => []
    | hd::tl => if f(hd) then hd::select(f, tl)
                        else select(f, tl)


