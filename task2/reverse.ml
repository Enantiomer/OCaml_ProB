let reverse lst = List.fold_left (fun p a -> a :: p) [] lst;;

let ans1 = reverse([1;100;189;156;554]);;
let ans2 = reverse([2;3;4;1;4]);;
let ans3 = reverse(["a";"b";"c"]);;
