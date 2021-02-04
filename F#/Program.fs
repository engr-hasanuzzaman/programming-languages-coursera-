// Learn more about F# at http://docs.microsoft.com/dotnet/fsharp

open System

let introduce() =
    printf "What is your name?"
    let name = Console.ReadLine()
    printf "What is your age?"
    let age = Console.ReadLine()
    printf "Oh you are %s and you are %s years old" name age

[<EntryPoint>]
let main argv =
    introduce()
    Console.ReadKey() |> ignore
    0 // return an integer exit code