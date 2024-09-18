.PHONY: test

gen:
	gap_to_julia Toposes

clean-gen:
	rm -f ./src/gap/*.autogen.jl
	rm -f ./src/gap/*/*.autogen.jl
	rm -f ./docs/src/*.autogen.md
	gap_to_julia Toposes

test:
	julia -e 'using Pkg; Pkg.test("Toposes");'
