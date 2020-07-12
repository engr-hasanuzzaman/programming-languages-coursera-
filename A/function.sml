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

(* hd return first element of the list *)
(* tl (tail) rerutn list except firt element *)
(* null return true is list is empty otherwise false *)
fun sum_list(l : int list) = 
  if null(l)
  then 0
  else hd(l) + sum_list(tl l)

(* e1 :: e2, pronounced “e1
consed onto e2.” *)
(* @ is built in function for list concatination *)
fun reverse(l : int list) = 
  if null l
  then []
  else reverse(tl l) @ [hd(l)] 

(* list concatination *)
val pair = swap(12, 20)
val triple = power(3, 3)
val fac = factorial(4)
val sum = sum_list([1,2,3,4,5,6])
val rev = reverse([1,2,3,4,5,6])