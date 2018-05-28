let max lst = List.fold_right (fun x y -> if x > y then x else y)  lst (List.hd lst);;
let ans1 = max ([1;3;6;10;4;1;2;3;4;5;6;2;1;4;5;6;1;3;4;5;5;6;6;100;1;3;34;1;100;1002;1;3;5;6;3;2;4;1001;6;5;4;3]);;
let ans2 = max ([1;3;5;7;3;2;2;4;5;6;9;10;4;3;2;2;4]);;
let ans3 = max ([1;2;3;4;5;6;7]);;

let () = Printf.printf "%d\n%d\n%d\n" ans1 ans2 ans3;;
