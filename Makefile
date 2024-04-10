default:
	rm -rf *.o
	riscv64-linux-gnu-as ${program}.s -o ./bin/${program}.o
	riscv64-linux-gnu-gcc -o ./bin/${program} ./bin/${program}.o -nostdlib -static
