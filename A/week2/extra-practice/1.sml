(* helper funstions *)
val days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 30]

(* return num of days before this month *)
fun num_of_days_before_month(days_in_month: int list, month: int): int =
    if month = 1 orelse null days_in_month
    then 0
    else hd(days_in_month) + num_of_days_before_month(tl(days_in_month), month - 1)

(* return num of days including this month (month 1 to 12) *)
fun num_of_days_including_month(days_in_month: int list, month: int): int =
    if month = 0 orelse null days_in_month then 0
    else hd days_in_month + num_of_days_including_month(tl days_in_month, month - 1)

fun is_older(date1: (int*int*int), date2: (int*int*int)):bool =
    if #1 date1 = #1 date2 
    then if #2 date1 = #2 date2
         then if #3 date1 = #3 date2 then false
              else #3 date1 < #3 date2
         else #2 date1 < #2 date2
    else #1 date1 < #1 date2


