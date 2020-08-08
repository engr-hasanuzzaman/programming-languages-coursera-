use "1.sml";
(* helper method testing *)
print("================== helper method testing =========");
val test = is_day_of_num_in_month(31, 1) = true;
val test = is_day_of_num_in_month(1, 1) = true;
val test = is_day_of_num_in_month(31, 2) = false;
val test = is_day_of_num_in_month(59, 2) = true;
val test = is_day_of_num_in_month(33, 1) = false;
val test = is_day_of_num_in_month(60, 3) = true;

print("=========== is_older testing =====================");
val test1 = is_older((2010, 01, 01), (2020, 10, 19)) = true;
val test1 = is_older((2020, 09, 20), (2020, 10, 19)) = true;
val test1 = is_older((2020, 10, 01), (2020, 10, 19)) = true;
val test1 = is_older((2022, 10, 01), (2021, 10, 19)) = false;
val test1 = is_older((2020, 10, 01), (2020, 09, 19)) = false;
val test1 = is_older((2020, 10, 02), (2020, 10, 01)) = false;
val test1 = is_older((2020, 10, 02), (2020, 10, 02)) = false;
