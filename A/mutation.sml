(* a_ref contaion the pointer ref of the value *)
(* ref are immutable but the value on the ref can be changed *)
val a_ref = ref 20;
val v_ref = ref 20;
(* a_ref and c_rec both indicate the same memory position *)
val c_ref = a_ref;
(* after below line, both a_ref & v_ref c_ref value will be changed *)
(* := is assignment operation *)
a_ref := 30;

(* !ref extract the value from the ref *)
(* we can not write v_ref + c_ref as both are ref and we can not sub ref *)
!v_ref + !c_ref;
