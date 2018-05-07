let rec range a b =
  if a > b then []
  else a :: range (a+1) b;;

let sum = List.fold_left ( +. ) 0.0;;
let product = List.fold_left ( * ) 1;;

let fact n = product (range 1 n);;
  

let exp n =
  let rec sum_exp a n =
    if a > n then [1.0]
    else 1.0 /. (float_of_int (fact a)) :: sum_exp (a+1) n
  in
  sum (sum_exp 1 n);;

let ans = exp 20;;
print_float ans;;
