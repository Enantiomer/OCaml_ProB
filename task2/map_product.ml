let map_product f lst1 lst2 =
  let product lst1 lst2 =
    List.fold_right (fun a x -> (List.map (fun y -> (a,y)) lst2) @ x) lst1 []
  in
  let lst = product lst1 lst2 in
  List.map f lst;;
let ans1 = map_product (fun (x,y) -> x + y)([1;2;3])([1;2]);;
let ans2 = map_product (fun (x,y) -> x * y)([1;2;3])([1;2]);;
let ans3 = map_product (fun (x,y) -> (y,x))([1;2;3])([1;2]);;
