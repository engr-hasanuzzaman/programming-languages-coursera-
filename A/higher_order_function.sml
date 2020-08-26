fun n_times(f, n, x) = 
    if n = 0 then x
    else f(n_times(f, n-1, x))

fun double(n) = n + n

