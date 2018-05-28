let index lst =
  let rec aux n = function
    | [] -> []
    | h::t -> List.map (fun x -> (x, n)) h @ aux (n + 1) t in
  List.sort compare (aux 1 lst);;

let index2 lst =
  let rec aux n = function
    | [] -> []
    | h::t -> List.map (fun x -> (x, [n])) h @ aux (n + 1) t in
  let rec aux2 (y, n) = function
    | [] -> (y, n) :: []
    | (hy, hn) :: t ->
      if hy = y && hn = n then aux2 (hy, hn) t
      else if hy = y then aux2 (hy, n @ hn) t
      else  (y, n) :: aux2 (hy, hn) t in
  let lst = List.sort compare (aux 1 lst) in
  aux2 (List.hd lst) lst

let list_of_string_lists = [["red";"green";"blue";"black";"yellow"];["light-blue";"blue";"dark-blue"];["pink";"orange";"red";"gray"];["black";"white"];["gray";"blue";"silver";"yellow"]];;

let ans = index list_of_string_lists;;
let ans2 = index2 list_of_string_lists;;
