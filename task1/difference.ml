open Printf

let rec member a ls =
  match ls with
  | [] -> false
  | h::t -> (a=h) || member a t;;

let rec difference a b =
  match a with
  | [] -> []
  | h::t ->
    if member h b
    then difference t b
    else h::difference t b;;

let ans = difference ([1;3;6;10;4])([1;3]);;
let () = List.iter (printf "%d ") ans;;
