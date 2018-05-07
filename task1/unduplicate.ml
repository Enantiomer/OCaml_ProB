open Printf

let rec member a ls =
  match ls with
  | [] -> false
  | h::t -> (a=h) || member a t;;

let rec unduplicate a =
  match a with
  | [] -> []
  | h::t ->
    if member h t
    then unduplicate t
    else h::unduplicate t;;

let ans = unduplicate([1;4;6;1;6;6;7;7;7;7;7;8;9;0]);;
let () = List.iter (printf "%d ") ans;;
