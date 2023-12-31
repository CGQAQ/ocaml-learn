let get (url: string) : string Lwt.t =
  let open Lwt in
  let open Cohttp in
  let open Cohttp_lwt_unix in
  Client.get (Uri.of_string url) >>= fun (resp, body) ->
    let code = resp |> Response.status |> Code.code_of_status in
    Printf.printf "Response code: %d\n" code;
    Printf.printf "Headers: %s\n" (resp |> Response.headers |> Header.to_string);
    body |> Cohttp_lwt.Body.to_string >|= fun body ->
    Printf.printf "Body of length: %d\n" (String.length body);
    body

let () = print_endline (Lwt_main.run (get "http://www.google.com"))
