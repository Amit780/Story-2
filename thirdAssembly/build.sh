img_name=file

set -o xtrace
set -e

riscv64-unknown-elf-g++ -c -march=rv64imafd -mabi=lp64d -mcmodel=medany -ggdb -o file.o file.s
riscv64-unknown-elf-g++ -o ${img_name}.elf -g -Xlinker -Map=output.map -T linker.script -march=rv64imafd -nostdlib file.o
riscv64-unknown-elf-objdump -xsD ${img_name}.elf > ${img_name}.dis

set +o xtrace
