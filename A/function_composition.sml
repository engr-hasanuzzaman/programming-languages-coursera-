(* using builtin o (smalll O (oh letter)) *)
fun sqrt i = Math.sqrt(Real.fromInt(abs i))
fun sqrt_with_built_in_fun i = (Math.sqrt o Real.fromInt o abs) i

(* declare infix operation *)
infix !>
fun sqrt_left_to_right i = i !> abs !> Real.fromInt !> Math.sqrt 
