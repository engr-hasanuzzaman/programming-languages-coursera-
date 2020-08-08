(* helper funstions *)
val days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 30]

(* return num of days before this month *)
fun num_of_days_before_month(days_in_month: int list, month: int): int =
    if month = 1 orelse null days_in_month
    then 0
    else hd(days_in_month) + num_of_days_before_month(tl(days_in_month), month - 1)

(* take data ruturn num of day for that date *)
fun date_to_num_of_day (date : (int*int*int)): int =
    (#1 date) * 365 + num_of_days_before_month(days_in_month, #2 date) + (#3 date)

(* return num of days including this month (month 1 to 12) *)
fun num_of_days_including_month(days_in_month: int list, month: int): int =
    if month = 0 orelse null days_in_month then 0
    else hd days_in_month + num_of_days_including_month(tl days_in_month, month - 1)

fun is_day_of_num_in_month(day_num: int, month: int): bool =
    let
        val month_start_day = (num_of_days_before_month(days_in_month, month) + 1)
        val month_end_day = num_of_days_including_month(days_in_month, month)
    in
        day_num >= month_start_day andalso day_num <= month_end_day
    end
(* month of date *)
fun date_to_month(date: int*int*int): int =
    #2 date
(* ------------------ actual solution region --------------- *)
fun is_older(date1: (int*int*int), date2: (int*int*int)):bool =
    date_to_num_of_day(date1) < date_to_num_of_day(date2)

fun number_in_month(dates: (int*int*int) list, month: int): int =
    if null dates then 0
    else 
        if date_to_month(hd dates) = month
        then 1 + number_in_month(tl dates, month)
        else number_in_month(tl dates, month)

