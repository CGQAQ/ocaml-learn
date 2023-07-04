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
let () = print_int (plus (ONE, THREE))
(* Output 3 *)
let () = print_int (plus (ONE, TWO))


let negate = fun x: int -> - x
(* Output 1 *)
let () = print_int (negate (-1))

