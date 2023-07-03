open Printf ;;

let rec times_table_impl ?(a: int = 1) ?(b: int=1) (n: int): int = match a, b with
  | 9, 9 -> print_endline "9 * 9 = 81"; 0
  | a, b when a == b -> printf "%d * %d = %d\n" a b (a*b); times_table_impl n ~a:(1) ~b:(b + 1)
  | a, b -> printf "%d * %d = %d\t" a b (a * b); times_table_impl n ~a:(a + 1) ~b:b
;;


let () = print_endline "" ;; let _ = times_table_impl 9 in ();;