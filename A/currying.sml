fun is_sorted(x, y, z) = x >= y andalso y >= z
val is_sorted_currying = fn x => fn y => fn z => x >= y andalso y >= z

val it = is_sorted(12, 10, 9) = ((is_sorted_currying 12) 10) 9

(* ML style currying function*)
fun sorted_ml_curryin x y z = x >= y andalso y >= z

(* fold using curry *)
fun fold f acc l = 
    case l of
        [] => acc
    | hd::tl => fold f (f(acc, hd)) tl

fun sum (x, y) = x+y;
fold (fn (x,y)=>x*y) 1 [2,3,4] = 24;
fold sum 0 [1,2,3,4,5] = 15;

(* range 1,5 [1,2,3,4,5] *)
fun range(x, y) =
    if x > y then []
    else x::range(x+1, y)

(* range with currying *)
(* make non-curry function to curry function *)
fun carry f x y = f (x, y)
val range_currying = carry range
val one_to_up = range_currying 1
val it = one_to_up 10