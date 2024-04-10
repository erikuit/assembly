default:
	rm -rf *.o
	riscv64-linux-gnu-as main.s -o main.o
	riscv64-linux-gnu-gcc -o main main.o -nostdlib -static
