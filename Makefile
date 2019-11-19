all: build

build:
	gcc -Wall -O3 -o tp3virtual main.c
	chmod a+x tp3virtual

clean:
	rm tp3virtual

experiments:
	rm -f results.txt
	touch results.txt

	echo "# 2 256" >> results.txt
	echo "" >> results.txt

	echo "## lru" >> results.txt
	echo "" >> results.txt

	./tp3virtual lru compilador.log 2 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru compressor.log 2 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru matriz.log 2 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru simulador.log 2 256 >> results.txt
	echo "" >> results.txt

	echo "## 2a" >> results.txt
	echo "" >> results.txt

	./tp3virtual 2a compilador.log 2 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a compressor.log 2 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a matriz.log 2 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a simulador.log 2 256 >> results.txt
	echo "" >> results.txt

	echo "## random" >> results.txt
	echo "" >> results.txt

	./tp3virtual random compilador.log 2 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual random compressor.log 2 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual random matriz.log 2 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual random simulador.log 2 256 >> results.txt
	echo "" >> results.txt

	echo "## fifo" >> results.txt
	echo "" >> results.txt

	./tp3virtual fifo compilador.log 2 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo compressor.log 2 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo matriz.log 2 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo simulador.log 2 256 >> results.txt
	echo "" >> results.txt

	

	echo "# 32 256" >> results.txt
	echo "" >> results.txt

	echo "## lru" >> results.txt
	echo "" >> results.txt

	./tp3virtual lru compilador.log 32 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru compressor.log 32 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru matriz.log 32 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru simulador.log 32 256 >> results.txt
	echo "" >> results.txt

	echo "## 2a" >> results.txt
	echo "" >> results.txt

	./tp3virtual 2a compilador.log 32 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a compressor.log 32 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a matriz.log 32 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a simulador.log 32 256 >> results.txt
	echo "" >> results.txt

	echo "## random" >> results.txt
	echo "" >> results.txt

	./tp3virtual random compilador.log 32 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual random compressor.log 32 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual random matriz.log 32 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual random simulador.log 32 256 >> results.txt
	echo "" >> results.txt

	echo "## fifo" >> results.txt
	echo "" >> results.txt

	./tp3virtual fifo compilador.log 32 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo compressor.log 32 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo matriz.log 32 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo simulador.log 32 256 >> results.txt
	echo "" >> results.txt



	echo "# 2 64" >> results.txt
	echo "" >> results.txt

	echo "## lru" >> results.txt
	echo "" >> results.txt

	./tp3virtual lru compilador.log 2 64 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru compressor.log 2 64 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru matriz.log 2 64 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru simulador.log 2 64 >> results.txt
	echo "" >> results.txt

	echo "## 2a" >> results.txt
	echo "" >> results.txt

	./tp3virtual 2a compilador.log 2 64 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a compressor.log 2 64 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a matriz.log 2 64 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a simulador.log 2 64 >> results.txt
	echo "" >> results.txt

	echo "## random" >> results.txt
	echo "" >> results.txt

	./tp3virtual random compilador.log 2 64 >> results.txt
	echo "" >> results.txt
	./tp3virtual random compressor.log 2 64 >> results.txt
	echo "" >> results.txt
	./tp3virtual random matriz.log 2 64 >> results.txt
	echo "" >> results.txt
	./tp3virtual random simulador.log 2 64 >> results.txt
	echo "" >> results.txt

	echo "## fifo" >> results.txt
	echo "" >> results.txt

	./tp3virtual fifo compilador.log 2 64 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo compressor.log 2 64 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo matriz.log 2 64 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo simulador.log 2 64 >> results.txt
	echo "" >> results.txt
