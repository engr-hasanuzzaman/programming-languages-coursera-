
(* Dan Grossman, Coursera PL, HW2 Provided Code *)

(* if you use this function to compare two strings (returns true if the same
   string), then you avoid several of the functions in problem 1 having
   polymorphic types that may be confusing *)
fun same_string(s1 : string, s2 : string) =
    s1 = s2

(* a *)
fun all_except_option(target, l) = 
    case l of
        [] => NONE
    | hd::tl => if same_string(hd, target) then SOME tl
                else
                    case all_except_option(target, tl) of
                        NONE => NONE
                    | SOME tl => SOME(hd::tl)

(* get_substitutions1 *)
fun get_substitutions1(list, target) =
    case list of
        [] => []
    | hd::tl => case all_except_option(target, hd) of
                    NONE => get_substitutions1(tl, target)
                | SOME elm => elm @ get_substitutions1(tl, target)

fun get_substitutions2(list, target) =
    let fun substitue(list, target, acc) =
                case list of
                    [] => acc
                | hd::tl => case all_except_option(target, hd) of
                                NONE => substitue(tl, target, acc)
                            | SOME elm => substitue(tl, target, acc@elm)

    in
        substitue(list, target, [])
    end


fun similar_names(substitutions, {first, middle, last}) =
  let
    fun helper([], acc) = acc
      | helper(y::xy, acc) =
         helper(xy, acc @ [{first=y, middle=middle, last=last}])
  in
    helper(first::get_substitutions2(substitutions, first), [])
  end

(* you may assume that Num is always used with values 2, 3, ..., 10
   though it will not really come up *)
datatype suit = Clubs | Diamonds | Hearts | Spades
datatype rank = Jack | Queen | King | Ace | Num of int 
type card = suit * rank

datatype color = Red | Black
datatype move = Discard of card | Draw 

exception IllegalMove

(* put your solutions for problem 2 here *)
fun card_color(card) =
  case card
    of (Clubs, _) => Black
     | (Diamonds, _) => Red
     | (Hearts, _) => Red
     | (Spades, _) => Black

fun card_value(card) =
  case card
    of (_, Ace) => 11
     | (_, Num x) => x
     | _ => 10

fun remove_card([], _, ex) = raise ex
  | remove_card(x::xs, card, ex) =
    case x = card
      of true => xs
       | false => x::remove_card(xs, card, ex)

fun all_same_color([]) = true
  | all_same_color(x::[]) = true
  | all_same_color(x::y::xs) =
    card_color(x) = card_color(y) andalso all_same_color(y::xs)

fun sum_cards(cards) =
  let
    fun helper([], acc) = acc
      | helper(x::xs, acc) =
        helper(xs, acc + card_value(x))
  in
    helper(cards, 0)
  end

fun score(cards, goal) =
  let
    fun preliminary_score(sum) =
      case sum > goal
        of true => 3 * (sum - goal)
         | false => goal - sum

    fun final_score(pscore, true) = pscore div 2
      | final_score(pscore, false) = pscore
  in
    final_score(preliminary_score(sum_cards(cards)), all_same_color(cards))
  end

fun officiate(cards, moves, goal) =
  let
    fun replay_game(_, [], heldcards) = score(heldcards, goal)
      | replay_game([], Draw::moves, heldcards) = score(heldcards, goal)
      | replay_game(cards, Discard card::moves, heldcards) =
        replay_game(cards, moves, remove_card(heldcards, card, IllegalMove))
      | replay_game(card::restcards, Draw::moves, heldcards) =
        case sum_cards(card::heldcards) > goal
          of true => score(card::heldcards, goal)
           | false => replay_game(restcards, moves, card::heldcards)
  in
    replay_game(cards, moves, [])
  end

