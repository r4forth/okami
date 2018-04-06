okami: okami.s
	arm-linux-gnueabihf-as okami.s -o okami.o
	arm-linux-gnueabihf-ld okami.o -o okami

tiny: okami
	strip okami

test: okami
	./okami core.ok test.ok

repl: okami
	rlwrap ./okami core.ok

server: okami
	./okami core.ok errno.ok ipv6.ok
