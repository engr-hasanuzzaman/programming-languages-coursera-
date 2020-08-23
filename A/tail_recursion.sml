(* sum list *)
fun sum(l) =
    let
        fun temp([], acc) = acc
            | temp(hd::tl, acc) = temp(tl, hd+acc)
    in
        temp(l, 0)
    end
