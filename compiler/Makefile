final_test.dmp: test.elf
	riscv64-unknown-elf-elf2hex --bit-width 32 --input test.elf --output testshex.txt
	riscv64-unknown-elf-objdump -d test.elf>final_test.dmp
test.elf: test.c lscript bootstrap.s
	riscv64-unknown-elf-gcc -O3 -Wall -nostdlib -march=rv32imav -mabi=ilp32 -T lscript bootstrap.s test.c fact.s -o test.elf
clean:
	rm test.elf final_test.dmp