// Learn more about F# at http://docs.microsoft.com/dotnet/fsharp

open System

let do_functs() =
    let sum(a: int, b: int): int = a + b
    printf "the sum of 5 and 12 is %i" (sum(5, 12))

let rec factorial n = if n <= 1 then 1 else n * factorial(n - 1)

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
    printf "factorial of 5 is %i " (factorial 5)
    Console.ReadKey() |> ignore
    0 // return an integer exit code