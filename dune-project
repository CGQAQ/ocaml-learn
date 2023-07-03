(lang dune 3.6)

(name ocaml-learn)

(generate_opam_files true)

(source
 (github cgqaq/ocaml-learn))

(authors "CGQAQ")

(maintainers "CGQAQ")

(license LICENSE)

(package
 (name ocaml-learn)
 (synopsis "learn ocaml")
 (description "learn ocaml")
 (depends ocaml dune cohttp-lwt-unix)
 (tags
  (topics "learn ocaml")))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
