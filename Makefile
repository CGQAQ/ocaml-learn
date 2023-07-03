build:
	dune build


times_table: build
	dune exec times_table

http_get: build
	dune exec http_get

