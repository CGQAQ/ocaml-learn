build:
	dune build

cmd=dune exec


times_table: build
	$(cmd) times_table

http_get: build
	$(cmd) http_get

try_with: build
	$(cmd) try_with

pattern_matching: build
	$(cmd) pattern_matching

c_me_daddy_main: build
	$(cmd) c_me_daddy_main