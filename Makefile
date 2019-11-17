all: build

build:
	gcc -Wall -o tp3virtual main.c
	chmod a+x tp3virtual

clean:
	rm tp3virtual
