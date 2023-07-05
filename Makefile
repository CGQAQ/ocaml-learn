build:
	dune build


times_table: build
	dune exec times_table

http_get: build
	dune exec http_get

try_with: build
	dune exec try_with

pattern_matching: build
	dune exec pattern_matching

c_me_daddy_main: build
	dune exec c_me_daddy_main