(* manage users list. Add new user, reteurn number of user, find user *)
val person = {firstName = "Hasan", lastName = "Sumon", name = "sumon", age = 30};

fun fullName(firstName: string, lastName: string, name: string, age: int) = 
    firstName ^ " " ^ lastName
val {firstName: string, lastName: string, name: string, age: int} = person;
fullName(firstName, lastName, name, age);