default:
	riscv64-linux-gnu-as ${p}.s -o ./bin/${p}.o
	riscv64-linux-gnu-gcc -o ./bin/${p} ./bin/${p}.o -no-pie -static
