let rec range a b =
  if a > b then []
  else a :: range (a+1) b;;

let rec max_good a = match a with
  | [] -> min_int
  | h::[] -> h
  | h::t ->
    let v = max_good t in
    if h > v then h else v;;

let rec max_bad a = match a with
  | [] -> min_int
  | h::[] -> h
  | h::t -> if h > max_bad t then h else max_bad t;;

let ans1 = max_good([3;6;3;1;4;6;10;13;4;5;2;3;5;6;4;15;2;4]);;
let ans2 = max_good ([1;3;6;10;4;1;2;3;4;5;6;2;1;4;5;6;1;3;4;5;5;6;6;100;1;3;34;1;100;1002;1;3;5;6;3;2;4;1001;6;5;4;3]);;
let ans3 = max_good([10;1;1;1;3;5;6;20]);;
let ans4=  max_bad(range 1 100000);;
let () = Printf.printf "%d\n%d\n%d\n%d" ans1 ans2 ans3 ans4;;
