fun is_sorted(x, y, z) = x >= y andalso y >= z
val is_sorted_currying = fn x => fn y => fn z => x >= y andalso y >= z

val it = is_sorted(12, 10, 9) = ((is_sorted_currying 12) 10) 9
