let inner_product lst1 lst2 =
  let lst = List.combine lst1 lst2 in
  List.fold_right (fun (a,b) c -> a * b + c) lst 0;;

let ans1 = inner_product([1;2;3])([4;5;6]);;
let ans2 = inner_product([1;1;1])([1;1;1]);;
let ans3 = inner_product([1;2;3])([0;0;0]);;
