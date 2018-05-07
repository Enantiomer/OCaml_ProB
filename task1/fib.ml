(* O(n) Algorithm *)
let rec auxfunc a b c =
  if c <= 2 then a
  else auxfunc (a+b) a (c-1);;

let fib n =
  auxfunc 1 1 n;;

for i = 1 to 30 do
  Printf.printf "%d\n" (fib i)
done;;
