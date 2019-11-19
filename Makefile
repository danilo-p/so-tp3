all: build

build:
	gcc -Wall -O3 -o tp3virtual main.c
	chmod a+x tp3virtual

clean:
	rm tp3virtual

experiments:
	rm -f results.txt
	touch results.txt

	echo "# Memória variando, Página fixa" >> results.txt

	echo "## 4 128" >> results.txt
	echo "" >> results.txt

	echo "### lru" >> results.txt
	echo "" >> results.txt

	./tp3virtual lru compilador.log 4 128 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru compressor.log 4 128 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru matriz.log 4 128 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru simulador.log 4 128 >> results.txt
	echo "" >> results.txt

	echo "### 2a" >> results.txt
	echo "" >> results.txt

	./tp3virtual 2a compilador.log 4 128 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a compressor.log 4 128 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a matriz.log 4 128 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a simulador.log 4 128 >> results.txt
	echo "" >> results.txt

	echo "### random" >> results.txt
	echo "" >> results.txt

	./tp3virtual random compilador.log 4 128 >> results.txt
	echo "" >> results.txt
	./tp3virtual random compressor.log 4 128 >> results.txt
	echo "" >> results.txt
	./tp3virtual random matriz.log 4 128 >> results.txt
	echo "" >> results.txt
	./tp3virtual random simulador.log 4 128 >> results.txt
	echo "" >> results.txt

	echo "### fifo" >> results.txt
	echo "" >> results.txt

	./tp3virtual fifo compilador.log 4 128 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo compressor.log 4 128 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo matriz.log 4 128 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo simulador.log 4 128 >> results.txt
	echo "" >> results.txt

	echo "## 4 256" >> results.txt
	echo "" >> results.txt

	echo "### lru" >> results.txt
	echo "" >> results.txt

	./tp3virtual lru compilador.log 4 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru compressor.log 4 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru matriz.log 4 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru simulador.log 4 256 >> results.txt
	echo "" >> results.txt

	echo "### 2a" >> results.txt
	echo "" >> results.txt

	./tp3virtual 2a compilador.log 4 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a compressor.log 4 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a matriz.log 4 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a simulador.log 4 256 >> results.txt
	echo "" >> results.txt

	echo "### random" >> results.txt
	echo "" >> results.txt

	./tp3virtual random compilador.log 4 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual random compressor.log 4 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual random matriz.log 4 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual random simulador.log 4 256 >> results.txt
	echo "" >> results.txt

	echo "### fifo" >> results.txt
	echo "" >> results.txt

	./tp3virtual fifo compilador.log 4 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo compressor.log 4 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo matriz.log 4 256 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo simulador.log 4 256 >> results.txt
	echo "" >> results.txt

	echo "## 4 512" >> results.txt
	echo "" >> results.txt

	echo "### lru" >> results.txt
	echo "" >> results.txt

	./tp3virtual lru compilador.log 4 512 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru compressor.log 4 512 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru matriz.log 4 512 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru simulador.log 4 512 >> results.txt
	echo "" >> results.txt

	echo "### 2a" >> results.txt
	echo "" >> results.txt

	./tp3virtual 2a compilador.log 4 512 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a compressor.log 4 512 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a matriz.log 4 512 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a simulador.log 4 512 >> results.txt
	echo "" >> results.txt

	echo "### random" >> results.txt
	echo "" >> results.txt

	./tp3virtual random compilador.log 4 512 >> results.txt
	echo "" >> results.txt
	./tp3virtual random compressor.log 4 512 >> results.txt
	echo "" >> results.txt
	./tp3virtual random matriz.log 4 512 >> results.txt
	echo "" >> results.txt
	./tp3virtual random simulador.log 4 512 >> results.txt
	echo "" >> results.txt

	echo "### fifo" >> results.txt
	echo "" >> results.txt

	./tp3virtual fifo compilador.log 4 512 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo compressor.log 4 512 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo matriz.log 4 512 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo simulador.log 4 512 >> results.txt
	echo "" >> results.txt

	echo "## 4 1024" >> results.txt
	echo "" >> results.txt

	echo "### lru" >> results.txt
	echo "" >> results.txt

	./tp3virtual lru compilador.log 4 1024 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru compressor.log 4 1024 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru matriz.log 4 1024 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru simulador.log 4 1024 >> results.txt
	echo "" >> results.txt

	echo "### 2a" >> results.txt
	echo "" >> results.txt

	./tp3virtual 2a compilador.log 4 1024 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a compressor.log 4 1024 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a matriz.log 4 1024 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a simulador.log 4 1024 >> results.txt
	echo "" >> results.txt

	echo "### random" >> results.txt
	echo "" >> results.txt

	./tp3virtual random compilador.log 4 1024 >> results.txt
	echo "" >> results.txt
	./tp3virtual random compressor.log 4 1024 >> results.txt
	echo "" >> results.txt
	./tp3virtual random matriz.log 4 1024 >> results.txt
	echo "" >> results.txt
	./tp3virtual random simulador.log 4 1024 >> results.txt
	echo "" >> results.txt

	echo "### fifo" >> results.txt
	echo "" >> results.txt

	./tp3virtual fifo compilador.log 4 1024 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo compressor.log 4 1024 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo matriz.log 4 1024 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo simulador.log 4 1024 >> results.txt
	echo "" >> results.txt

	echo "## 4 2048" >> results.txt
	echo "" >> results.txt

	echo "### lru" >> results.txt
	echo "" >> results.txt

	./tp3virtual lru compilador.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru compressor.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru matriz.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru simulador.log 4 2048 >> results.txt
	echo "" >> results.txt

	echo "### 2a" >> results.txt
	echo "" >> results.txt

	./tp3virtual 2a compilador.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a compressor.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a matriz.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a simulador.log 4 2048 >> results.txt
	echo "" >> results.txt

	echo "### random" >> results.txt
	echo "" >> results.txt

	./tp3virtual random compilador.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random compressor.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random matriz.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random simulador.log 4 2048 >> results.txt
	echo "" >> results.txt

	echo "### fifo" >> results.txt
	echo "" >> results.txt

	./tp3virtual fifo compilador.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo compressor.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo matriz.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo simulador.log 4 2048 >> results.txt
	echo "" >> results.txt

	echo "-----------------------------------------------" >> results.txt
	echo "# Memória fixa, Página variando" >> results.txt

	echo "## 2 2048" >> results.txt
	echo "" >> results.txt

	echo "### lru" >> results.txt
	echo "" >> results.txt

	./tp3virtual lru compilador.log 2 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru compressor.log 2 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru matriz.log 2 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru simulador.log 2 2048 >> results.txt
	echo "" >> results.txt

	echo "### 2a" >> results.txt
	echo "" >> results.txt

	./tp3virtual 2a compilador.log 2 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a compressor.log 2 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a matriz.log 2 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a simulador.log 2 2048 >> results.txt
	echo "" >> results.txt

	echo "### random" >> results.txt
	echo "" >> results.txt

	./tp3virtual random compilador.log 2 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random compressor.log 2 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random matriz.log 2 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random simulador.log 2 2048 >> results.txt
	echo "" >> results.txt

	echo "### fifo" >> results.txt
	echo "" >> results.txt

	./tp3virtual fifo compilador.log 2 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo compressor.log 2 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo matriz.log 2 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo simulador.log 2 2048 >> results.txt
	echo "" >> results.txt

	echo "## 4 2048" >> results.txt
	echo "" >> results.txt

	echo "### lru" >> results.txt
	echo "" >> results.txt

	./tp3virtual lru compilador.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru compressor.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru matriz.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru simulador.log 4 2048 >> results.txt
	echo "" >> results.txt

	echo "### 2a" >> results.txt
	echo "" >> results.txt

	./tp3virtual 2a compilador.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a compressor.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a matriz.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a simulador.log 4 2048 >> results.txt
	echo "" >> results.txt

	echo "### random" >> results.txt
	echo "" >> results.txt

	./tp3virtual random compilador.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random compressor.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random matriz.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random simulador.log 4 2048 >> results.txt
	echo "" >> results.txt

	echo "### fifo" >> results.txt
	echo "" >> results.txt

	./tp3virtual fifo compilador.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo compressor.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo matriz.log 4 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo simulador.log 4 2048 >> results.txt
	echo "" >> results.txt

	echo "## 8 2048" >> results.txt
	echo "" >> results.txt

	echo "### lru" >> results.txt
	echo "" >> results.txt

	./tp3virtual lru compilador.log 8 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru compressor.log 8 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru matriz.log 8 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru simulador.log 8 2048 >> results.txt
	echo "" >> results.txt

	echo "### 2a" >> results.txt
	echo "" >> results.txt

	./tp3virtual 2a compilador.log 8 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a compressor.log 8 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a matriz.log 8 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a simulador.log 8 2048 >> results.txt
	echo "" >> results.txt

	echo "### random" >> results.txt
	echo "" >> results.txt

	./tp3virtual random compilador.log 8 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random compressor.log 8 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random matriz.log 8 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random simulador.log 8 2048 >> results.txt
	echo "" >> results.txt

	echo "### fifo" >> results.txt
	echo "" >> results.txt

	./tp3virtual fifo compilador.log 8 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo compressor.log 8 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo matriz.log 8 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo simulador.log 8 2048 >> results.txt
	echo "" >> results.txt

	echo "## 16 2048" >> results.txt
	echo "" >> results.txt

	echo "### lru" >> results.txt
	echo "" >> results.txt

	./tp3virtual lru compilador.log 16 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru compressor.log 16 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru matriz.log 16 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru simulador.log 16 2048 >> results.txt
	echo "" >> results.txt

	echo "### 2a" >> results.txt
	echo "" >> results.txt

	./tp3virtual 2a compilador.log 16 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a compressor.log 16 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a matriz.log 16 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a simulador.log 16 2048 >> results.txt
	echo "" >> results.txt

	echo "### random" >> results.txt
	echo "" >> results.txt

	./tp3virtual random compilador.log 16 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random compressor.log 16 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random matriz.log 16 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random simulador.log 16 2048 >> results.txt
	echo "" >> results.txt

	echo "### fifo" >> results.txt
	echo "" >> results.txt

	./tp3virtual fifo compilador.log 16 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo compressor.log 16 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo matriz.log 16 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo simulador.log 16 2048 >> results.txt
	echo "" >> results.txt

	echo "## 32 2048" >> results.txt
	echo "" >> results.txt

	echo "### lru" >> results.txt
	echo "" >> results.txt

	./tp3virtual lru compilador.log 32 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru compressor.log 32 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru matriz.log 32 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru simulador.log 32 2048 >> results.txt
	echo "" >> results.txt

	echo "### 2a" >> results.txt
	echo "" >> results.txt

	./tp3virtual 2a compilador.log 32 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a compressor.log 32 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a matriz.log 32 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a simulador.log 32 2048 >> results.txt
	echo "" >> results.txt

	echo "### random" >> results.txt
	echo "" >> results.txt

	./tp3virtual random compilador.log 32 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random compressor.log 32 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random matriz.log 32 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random simulador.log 32 2048 >> results.txt
	echo "" >> results.txt

	echo "### fifo" >> results.txt
	echo "" >> results.txt

	./tp3virtual fifo compilador.log 32 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo compressor.log 32 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo matriz.log 32 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo simulador.log 32 2048 >> results.txt
	echo "" >> results.txt

	echo "## 64 2048" >> results.txt
	echo "" >> results.txt

	echo "### lru" >> results.txt
	echo "" >> results.txt

	./tp3virtual lru compilador.log 64 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru compressor.log 64 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru matriz.log 64 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual lru simulador.log 64 2048 >> results.txt
	echo "" >> results.txt

	echo "### 2a" >> results.txt
	echo "" >> results.txt

	./tp3virtual 2a compilador.log 64 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a compressor.log 64 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a matriz.log 64 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual 2a simulador.log 64 2048 >> results.txt
	echo "" >> results.txt

	echo "### random" >> results.txt
	echo "" >> results.txt

	./tp3virtual random compilador.log 64 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random compressor.log 64 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random matriz.log 64 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual random simulador.log 64 2048 >> results.txt
	echo "" >> results.txt

	echo "### fifo" >> results.txt
	echo "" >> results.txt

	./tp3virtual fifo compilador.log 64 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo compressor.log 64 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo matriz.log 64 2048 >> results.txt
	echo "" >> results.txt
	./tp3virtual fifo simulador.log 64 2048 >> results.txt
	echo "" >> results.txt
