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

[<EntryPoint>]
let main argv =
    // introduce()
    // do_functs
    // printf "factorial of 5 is %i " (factorial 5)
    // map_func()
    // mutatation()
    let res = multiply [1;2;3;4] 5
    printfn "the out put is %A" res
    // let input = [
    [1;2;3;4;5;6;7;8;9;10]
    |> List.filter(fun e -> (e % 2) = 0)
    |> List.map(fun e -> e * 2)
    |> printfn "Final list is %A"
    // printfn "even number ins %A" (List.filter(fun x -> x % 2 = 0))
    Console.ReadKey() |> ignore
    0 // return an integer exit code