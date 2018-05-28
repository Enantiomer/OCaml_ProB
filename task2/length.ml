open Printf

let length lst = List.fold_left (fun p a -> p + 1) 0 lst;;

let ans1 = length([1;100;189;156;554]);;
let ans2 = length([]);;
let ans3 = length([5;5;5;5;5;5;5;5;5;5;5;5;5;5]);;
print_int ans1;;
printf "\n";;
print_int ans2;;
printf "\n";;
print_int ans3;;
