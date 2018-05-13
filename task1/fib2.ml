(* O(1) Algorithm *)

let rec pow (x, y) =
  if y = 0 then 1.0
  else 
    let z = pow (x, y / 2) in
    let zz = z *. z in
    if y mod 2 = 0 then zz else x *. zz

let round n = floor (n +. 0.5)

let fib n =
  int_of_float (round (((pow((1.0 +. sqrt 5.0) /. 2.0, n) -. pow((1.0 -. sqrt 5.0) /. 2.0, n)) /. sqrt(5.0))));;

for i = 1 to 40 do
  Printf.printf "%d\n" (fib i)
done;;
