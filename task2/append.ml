let append lst1 lst2 = List.fold_right (fun e a -> e :: a) lst1 lst2;;

let ans1 = append ([1;3;6;10;4])([1;3]);;
let ans2 = append ([2;4])([]);;
let ans3 = append ([])([1;3;6;7]);;
