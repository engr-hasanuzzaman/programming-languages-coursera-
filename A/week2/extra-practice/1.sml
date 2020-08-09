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

fun num_in_list(l: int list, num: int): bool =
    if null l then false
    else if hd l = num then true
    else num_in_list(tl l, num)

(* ------------------ actual solution region --------------- *)
fun is_older(date1: (int*int*int), date2: (int*int*int)):bool =
    date_to_num_of_day(date1) < date_to_num_of_day(date2)

fun number_in_month(dates: (int*int*int) list, month: int): int =
    if null dates then 0
    else 
        if date_to_month(hd dates) = month
        then 1 + number_in_month(tl dates, month)
        else number_in_month(tl dates, month)

fun number_in_months(dates: (int*int*int) list, months: int list): int =
    if null dates then 0
    else 
        if num_in_list(months, date_to_month(hd dates))
        then 1 + number_in_months(tl dates, months)
        else number_in_months(tl dates, months)

fun dates_in_month(dates: (int*int*int) list, month: int): (int*int*int) list =
    if null dates then []
    else
        if date_to_month(hd dates) = month
        then hd dates :: dates_in_month(tl dates, month)
        else dates_in_month(tl dates, month)