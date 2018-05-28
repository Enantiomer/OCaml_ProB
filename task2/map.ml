let map f lst = List.fold_right (fun e a -> f e :: a) lst [];;

let ans1 = map (fun x -> x * x)([1;2;3;4;5;6;7;8;9;10]);;
let ans2 = map (fun x -> [x])([1;2;3;4;5;6;7;8;9;10]);;
let ans3 = map (fun x -> if x mod 2 = 0 then x else 0)([1;2;3;4;5;6;7;8;9;10]);;
