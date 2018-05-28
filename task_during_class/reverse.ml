(* ソースコード *)
open Printf

let rec reverse ls = rev ls []
and rev ls r = match ls with
  |  [] -> r
  | h::t -> rev t (h::r);;

  let ans = reverse([1;4;6;1;6;6;7;7;7;7;7;8;9;0]);;
  let () = List.iter (printf "%d ") ans;;
