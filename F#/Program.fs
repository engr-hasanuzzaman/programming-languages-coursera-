// Learn more about F# at http://docs.microsoft.com/dotnet/fsharp

open System

let do_functs() =
    let sum(a: int, b: int): int = a + b
    printf "the sum of 5 and 12 is %i" (sum(5, 12))

let rec factorial n = if n <= 1 then 1 else n * factorial(n - 1)

let map_func() =
    let list = [2;3;4;5;6]
    let double_list = List.map(fun x -> x * 2) list
    printf "double_list is %A" double_list

let mutatation() =
    let mutable will_be_changed = "hi"
    will_be_changed <- "hello"
    printfn "the new value of old hi is %s" will_be_changed 
    let a = ref 10
    a := 200
    printfn "the new value of old 10 is %i" ! a 

let multiply list a =
    List.map(fun n -> n * a) list

let introduce() =
    printf "What is your name?"
    let name = Console.ReadLine()
    printf "What is your age?"
    let age = Console.ReadLine()
    printf "Oh you are %s and you are %s years old" name age

let string_stuff() = 
    let str1 = "random straing"
    let str2 = @"ignore backslashes"
    let str3 = """ "double quation will be ignored" """
    let str4 = str1 + " " + str2
    printfn "length of str is %i" (String.length(str4))
    printfn "char %c" str1.[1]
    printfn "range operatio %s" (str1.[0..3])
    printfn "is uppercase %b" (String.exists(fun c -> Char.IsUpper(c)) "Thisis test")
    printfn "is uppercase %b" (String.exists(fun c -> Char.IsUpper(c)) "thisis test")
    printfn "12333434
    
    is all the digit %b" (String.forall(fun c -> Char.IsDigit(c)) "12333434")
    printfn "is all the digit %b" (String.forall(fun c -> Char.IsDigit(c)) "12333434")
    printfn "%s" (String.init 10 (fun i -> i.ToString()))
    "test"
    |> String.iter(fun c -> printfn "%c" c)
 
let loop_stuff() =
    let magic = "7"
    let mutable guess = ""
    while not (magic.Equals(guess)) do
        printfn "guess a number"
        guess <- Console.ReadLine()
    printfn "you number is %s"  guess
    
    for i = 1 to 10 do
       printf "%i" i
    [1..10]
    |> List.reduce(+)
    |> printfn "sum is %i"

let math_stuffs() = 
    let i = 10
    printf "float %f" (float i)
    printf "integer casting %i" (int 2.345)
    printf "type of 5 is %A" (i.GetType())

    // math function
    printf "A float is %f" (float 1)
    printf "Abs of -23 is %i" (abs -23)
    printf "floor of 2.3 is %f" (floor 2.3)
    printf "ceil of 2.3 %f" (ceil 1.4)
    printf "A float is %f" (float 1)

let function_composition() = 
    // // function composition 
    let mul_num x = x * 3
    let add_num  y = y + 3
    // printfn "final value is %i"  mul_num 2 |> add_num
    let mul_add = mul_num >> add_num
    let add_mul = mul_num << add_num
    printfn "mul_add of 3 is %i" (mul_add 3)
    printfn "add_mul of 3 is %i" (add_mul 3)

let conditional_stuff() = 
    let age = 8
    if age < 5 then
        printfn "small"
    elif age = 5 then 
        printfn "age is 5"
    elif (age > 5) && (age <= 18) then
        let grade = age - 5
        printfn "grade is %i" grade
    else
        printfn "other"

    let grade2: string = 
        match age with
        | age when age < 5 -> "Preschool"
        | 5 -> "kindergarden"
        | age when ((age  > 5) && (age <= 18)) -> (age - 5).ToString()
        | _ -> "Colleage"
    printfn "Grade2 is : %s" grade2
let list_staff() = 
    let list1 = [1;2;3;4]
    list1 |> List.iter (printf "%i")
    let list2 = [1..5]
    printfn "list2 is %A" list2
    let list3 = 5::6::7::[]
    printfn "list3 %A" list3
    let list4 = ['a'..'z']
    printfn "list4 %A" list4
    let list5 = List.init 5 (fun i -> i * 2)
    printfn "list5 %A" list5

    let list6 = [for i in 1..5 do yield (i * i)]
    let list7 = [for i in 1..5 do yield! [i .. i + 2]]
    let list8 = [for i in 1..20 do if (i % 2 = 0) then yield i]
    printfn "list6 %A" list6
    printfn "list7 %A" list7
    printfn "list8 %A" list8

    printfn "Head of list2 %i" list2.Head
    printfn "Tail of list2 %A" list2.Tail
    List.fold(fun sum e -> sum + e) 0 [1;2;3] |> printfn "sum is %i"
    printfn "soft of [2;5;1;3;] is %A" (List.sort [2;5;1;3;])
    printfn "only odd is %A" (List.filter(fun e -> e % 2 = 1) [1..20])
    printfn "is empty %b" (list1.IsEmpty)
    printfn "is empty %i" ([1..5].Item(1))
type emotion =
    | j = 0
    | f = 1
    | a = 2

let enum_stuff() = 
    let my_f = emotion.j
    match my_f with
    | j -> printfn "joy"
    | f -> printfn "fear"
    | a -> printfn "anger"
    | _ -> printfn "do not know"

let option_stuff() =
    let divide x y = 
        match y with
        | 0 -> None
        | _ -> Some(x/y)
    if (divide 5 0).IsSome then 
        printfn "5 0 is value is %A" (divide  5 0).Value
    elif (divide 5 0 ).IsNone then 
        printfn "none"
    else
        printfn "somthing happend"
let tuple_stuff() =
    let avg  (a,b,c): float =
        let sum = a + b + c
        sum / 3.0
    printfn "avg is %f" (avg (1.0, 2.0,3.0))
    let my_data = ("sumon", 31, 1)
    let (name, age, _) = my_data
    printfn "name is %s, age is %i" name age

type Customer = 
    { name: string; balance: float }
let record_stuff() = 
    let bob: Customer = {name = "bob";  balance = 234.0}
    printfn "bob is %A" bob

let seq_stuff() = 
    let seq1 = seq { 1 .. 100 }
    let seq2 = seq { 0 .. 2 .. 50}
    let seq3 = seq { 50 .. 1}
    printfn "seq3 is %A" seq3
    
    let is_prime n =
        let rec check i =
            i >= n / 2 || ( n % i <> 0 && check(i + 1))
        check 2
    printfn "5 is prime %b" (is_prime 5)
    seq { for i in 1..500 do if (is_prime i) then yield i} |> printfn "%A"
let map_stuff() = 
    let customer =
        Map.empty
           .Add("sumon", 200)
           .Add("salma", 300)
    printfn "number of customers %i" customer.Count
    let s = customer.TryFind "salma"
    match s with
    | Some x -> printfn "salma %i " x
    | None -> printfn "not found"
    
    if Map.containsKey "salma" customer then
        printfn "salma exist"
    if customer.ContainsKey "sumon" then printfn "sumon exist"
    let c2 = Map.remove "salma" customer
    printfn "new map size is %i" c2.Count
    printfn "map is %A" c2
    printfn "%i" c2.["sumon"]
    // printfn "the samle "
let add_stuff<'T> x y =
    x + y
let generic_stuff() =
    // printfn "sumo of 2.3 and 1.2 is %.2f" (add_stuff<float> 2.3 1.2)
    printfn "sumo of 2 and 1 is %i" (add_stuff<int> 2 1)

// let exception_handling() = 
type Rectangle = struct 
    val length : int
    val width : int

    new (l, w) =
        { length = l; width = w}
end
let struc_stuff() = 
    let area (r: Rectangle) = 
        r.length * r.width
    let a = new Rectangle(4, 5)
    printfn "area is %i" (area a)

type Animal = class
    val name: string
    val age: float
    val height: float

    new (name, age, heigh) = 
        { name = name; age = age; height = heigh }
    member x.Run = 
      printfn "%s can run" x.name
end

type Dog(name, age, height) =
    inherit Animal(name, age, height)

    member x.Bark = 
        printfn "%s can bark" x.name
let class_stuff() = 
    let foo = new Animal("foo", 2.5, 4.0)
    let kalu = new Dog("kalu", 2.0, 4.0)
    kalu.Bark
    foo.Run
    kalu.Run
[<EntryPoint>]
let main argv =
    // introduce()
    // do_functs
    // printf "factorial of 5 is %i " (factorial 5)
    // map_func()
    // mutatation()
    // let res = multiply [1;2;3;4] 5
    // printfn "the out put is %A" res
    // // let input = [
    // [1;2;3;4;5;6;7;8;9;10]
    // |> List.filter(fun e -> (e % 2) = 0)
    // |> List.map(fun e -> e * 2)
    // |> printfn "Final list is %A"
    // // printfn "even number ins %A" (List.filter(fun x -> x % 2 = 0))
    "common"
    |> String.collect(fun c -> sprintf "%c, " c) 
    |> printfn "%s"
    // string_stuff()
    // loop_stuff()
    // conditional_stuff()
    // list_staff()
    // enum_stuff()
    // option_stuff()
    // tuple_stuff()
    // record_stuff()
    // seq_stuff()
    // map_stuff()
    // generic_stuff()
    // exception_handling()
    // struc_stuff()
    class_stuff()
    Console.ReadKey() |> ignore
    0 // return an integer exit code