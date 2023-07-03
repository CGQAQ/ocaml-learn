let a = None
let () = (try (Option.get a) with a -> Printexc.to_string a |> print_endline)