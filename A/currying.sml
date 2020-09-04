fun is_sorted(x, y, z) = x >= y andalso y >= z
val is_sorted_currying = fn x => fn y => fn z => x >= y andalso y >= z

val it = is_sorted(12, 10, 9) = ((is_sorted_currying 12) 10) 9

(* ML style currying function*)
fun sorted_ml_curryin x y z = x >= y andalso y >= z
