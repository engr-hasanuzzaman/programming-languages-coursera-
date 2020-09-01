(* using builtin o (smalll O (oh letter)) *)
fun sqrt i = Math.sqrt(Real.fromInt(abs i))
fun sqrt_with_built_in_fun i = (Math.sqrt o Real.fromInt o abs) i
