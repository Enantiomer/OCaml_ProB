let product lst1 lst2 =
  List.fold_right (fun a x -> (List.map (fun y -> (a,y)) lst2) @ x) lst1 [];;

let ans1 = product ([1;2;3])(["a";"b"]);;
let ans2 = product ([1;2;3;4])(["";"a"]);;
let ans3 = product ([1;2;3])([]);;
