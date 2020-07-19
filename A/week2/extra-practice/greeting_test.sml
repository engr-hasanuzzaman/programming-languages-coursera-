use "greeting.sml";
(* OS.FileSys.getDir(); *)
val g1 = greeting(SOME "sumon") = "Hello there, sumon!"
val g2 = greeting(NONE) = "Hello there, you!";