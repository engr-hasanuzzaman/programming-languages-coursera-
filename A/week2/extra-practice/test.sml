use "1.sml";
(* helper method testing *)
print("================== helper method testing =========");
val test = is_day_of_num_in_month(31, 1) = true;
val test = is_day_of_num_in_month(1, 1) = true;
val test = is_day_of_num_in_month(31, 2) = false;
val test = is_day_of_num_in_month(59, 2) = true;
val test = is_day_of_num_in_month(33, 1) = false;
val test = is_day_of_num_in_month(60, 3) = true;
print("==@ num_in_list");
val test = num_in_list([1,2,3,4,5], 1) = true;
val test = num_in_list([1,2,3,4,5], 5) = true;
val test = num_in_list([1,2,3,4,5], 3) = true;
val test = num_in_list([1,2,3,4,5], 0) = false;
val test = num_in_list([1,2,3,4,5], 6) = false;

print("=========== is_older testing =====================");
val test1 = is_older((2010, 01, 01), (2020, 10, 19)) = true;
val test1 = is_older((2020, 09, 20), (2020, 10, 19)) = true;
val test1 = is_older((2020, 10, 01), (2020, 10, 19)) = true;
val test1 = is_older((2022, 10, 01), (2021, 10, 19)) = false;
val test1 = is_older((2020, 10, 01), (2020, 09, 19)) = false;
val test1 = is_older((2020, 10, 02), (2020, 10, 01)) = false;
val test1 = is_older((2020, 10, 02), (2020, 10, 02)) = false;

print("========== number_in_month testing =================");
val input = [(2010, 01, 01), (2010, 02, 01), (2010, 04, 01), (2010, 01, 01), (2010, 01, 01), (2010, 01, 01)];
val test1 = number_in_month(input, 1) = 4;
val test1 = number_in_month(input, 2) = 1;
val test1 = number_in_month(input, 3) = 0;
val test1 = number_in_month(input, 4) = 1;

print("========== number_in_months testing =================");
val input = [(2010, 01, 01), (2010, 02, 01), (2010, 04, 01), (2010, 01, 01), (2010, 01, 01), (2010, 01, 01)];
val test1 = number_in_months(input, [1]) = 4;
val test1 = number_in_months(input, [2]) = 1;
val test1 = number_in_months(input, [3]) = 0;
val test1 = number_in_months(input, [4]) = 1;
val test1 = number_in_months(input, [1,2,3]) = 5;
val test1 = number_in_months(input, [1,2,4]) = 6;
val test1 = number_in_months(input, [10,11,7]) = 0;

print("========== dates_in_month testing =================");
val input = [(2010, 01, 01), (2011, 02, 01), (2012, 04, 01), (2013, 01, 01), (2014, 01, 01), (2015, 01, 01)];
val test1 = dates_in_month(input, 1) = [(2010, 01, 01), (2013, 01, 01), (2014, 01, 01), (2015, 01, 01)];
val test1 = dates_in_month(input, 2) = [(2011, 02, 01)];
val test1 = dates_in_month(input, 4) = [(2012, 04, 01)];
val test1 = dates_in_month(input, 10) = [];

print("========== dates_in_months testing =================");
val test1 = dates_in_months(input, [1]) = [(2010, 01, 01), (2013, 01, 01), (2014, 01, 01), (2015, 01, 01)];
val test1 = dates_in_months(input, [2]) = [(2011, 02, 01)];
val test1 = dates_in_months(input, [4]) = [(2012, 04, 01)];
val test1 = dates_in_months(input, [10]) = [];
val test1 = dates_in_months(input, [1,2,4,12,10]) = [(2010, 01, 01), (2013, 01, 01), (2014, 01, 01), (2015, 01, 01),(2011, 02, 01),(2012, 04, 01)];

print("========== get_nth testing =================");
val test = get_nth(month_names, 1) = "January";
val test = get_nth(month_names, 2) = "February";
val test = get_nth(month_names, 3) = "March";
val test = get_nth(month_names, 4) = "April";
val test = get_nth(month_names, 5) = "May";
val test = get_nth(month_names, 6) = "June";
val test = get_nth(month_names, 7) = "July";
val test = get_nth(month_names, 8) = "August";
val test = get_nth(month_names, 9) = "September";
val test = get_nth(month_names, 10) = "October";
val test = get_nth(month_names, 11) = "November";
val test = get_nth(month_names, 12) = "December";

print("========== date_to_string testing =================");
val test = date_to_string((2020, 09, 29)) = "September 29, 2020";
val test = date_to_string((1989, 1, 31)) = "January 31, 1989";

print("========== number_before_reaching_sum testing =================");
val test = number_before_reaching_sum(5, [1,2,3,4,5]) = 2;
val test = number_before_reaching_sum(1, [1,2,3,4,5]) = 0;
val test = number_before_reaching_sum(10, [1,2,3,4,5]) = 3;
val test = number_before_reaching_sum(11, [1,2,3,4,5]) = 4;
val test = number_before_reaching_sum(11, [1,2]) = 2;
val test = number_before_reaching_sum(0, [1,2]) = 0;
