fun repeat(l1: int list, l2: int list) = 
    if null(l1) orelse null(l2)
    then l1
    else 
        let
            fun repeating(e, n)= 
                if n = 1
                then [e]
                else e::repeating(e, n-1)
        in
            if null(tl l2)
            then repeating(hd(l1), hd(l2)) @ tl(l1)
            else repeating(hd(l1), hd(l2)) @ repeat(tl l1, tl l2)
        end
        