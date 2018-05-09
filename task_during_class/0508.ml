open Printf

let rec union a b = match (a,b) with
  | ([],b) -> b
  | (a,[]) -> a
  | (ha::ta,hb::tb) ->
    if ha = hb then ha :: union ta tb
    else if ha < hb then ha :: union ta (hb::tb)
    else hb :: union (ha::ta) tb;;

  let ans = union ([1;3;4;10;12])([3;11;13]);;
  let () = List.iter (printf "%d ") ans;;
