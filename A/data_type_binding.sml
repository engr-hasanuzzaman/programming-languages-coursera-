datatype mytype = TowInts of int * int
                  | Str of string
                  | Pizza
(* we have created new data type with 3 constructors TowInts that take two int value as input *)
(* Str take string as only vale and Pizza do not take any input *)
val m = TowInts(2, 3);
val n = Str("Sumon");
val null = Pizza;