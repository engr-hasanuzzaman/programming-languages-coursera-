fun is_older(date1: (int*int*int), date2: (int*int*int)):bool =
    if #1 date1 = #1 date2 
    then if #2 date1 = #2 date2
         then if #3 date1 = #3 date2 then false
              else #3 date1 < #3 date2
         else #2 date1 < #2 date2
    else #1 date1 < #1 date2