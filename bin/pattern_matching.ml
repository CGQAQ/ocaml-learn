(* enum like *)
type num = ONE | TWO | THREE

let plus = function 
| ONE, ONE -> 2
| ONE, TWO -> 3
| ONE, THREE -> 4
| TWO, ONE -> 3
| TWO, TWO -> 4
| TWO, THREE -> 5
| THREE, ONE -> 4
| THREE, TWO -> 5
| THREE, THREE -> 6
(* Output 4 *)
let () = print_int (plus (ONE, THREE)); print_newline ()
(* Output 3 *)
let () = print_int (plus (ONE, TWO)); print_newline ()


let negate = fun x: int -> - x
(* Output 1 *)
let () = print_int (negate (-1)); print_newline ()
(* Output -1 *)
let () = print_int (negate 1); print_newline ()


let rec fact = fun x: int -> 
  match x with
  | 0 -> 1
  | x -> x * fact (x - 1)
(* Output 120 *)
let () = print_int (fact 5); print_newline ()