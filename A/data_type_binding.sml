datatype mytype = TowInts of int * int
                  | Str of string
                  | Pizza
(* we have created new data type with 3 constructors TowInts that take two int value as input *)
(* Str take string as only vale and Pizza do not take any input *)
val m = TowInts(2, 3);
val n = Str("Sumon");
val null = Pizza;

(* output of case expressiong must be same *)
fun evalMyType x = 
            case x of
              Pizza => "This is pizza"
            | Str s => "Hi " ^ s
            | TowInts(i1, i2) => "tow sum"
val p = evalMyType(Str("sumon"));
val twoI = evalMyType(TowInts(2,3));
val str = evalMyType(Pizza);