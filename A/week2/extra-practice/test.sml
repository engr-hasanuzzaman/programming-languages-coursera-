use "1.sml";

val test1 = is_older((2010, 01, 01), (2020, 10, 19)) = true;
val test1 = is_older((2020, 09, 20), (2020, 10, 19)) = true;
val test1 = is_older((2020, 10, 01), (2020, 10, 19)) = true;
val test1 = is_older((2022, 10, 01), (2021, 10, 19)) = false;
val test1 = is_older((2020, 10, 01), (2020, 09, 19)) = false;
val test1 = is_older((2020, 10, 02), (2020, 10, 01)) = false;
val test1 = is_older((2020, 10, 02), (2020, 10, 02)) = false;
