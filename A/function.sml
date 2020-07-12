fun helloWorld(name: string) = ("hello", name);
fun swap(a : int, b : int) =
  (b, a)

fun power(x: int, y: int) =
  if y <= 0
  then 1
  else x * power(x, y-1)

fun factorial(n :int) = 
  if n <= 1
  then n
  else n * factorial(n - 1)


(* helloWorld("sumon"); *)
val pair = swap(12, 20)
val triple = power(3, 3)
val fac = factorial(4)