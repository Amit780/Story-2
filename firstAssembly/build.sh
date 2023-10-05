IMG_NAME=file1

set -o xtrace
set -e

riscv64-unknown-elf-g++ -c -march=rv64imafd -mabi=lp64d -mcmodel=medany -ggdb -o file1.o file1.s
riscv64-unknown-elf-g++ -o ${IMG_NAME}.elf -g -Xlinker -Map=output.map -T linker.script -march=rv64imafd -nostdlib file1.o
riscv64-unknown-elf-objdump -xsD ${IMG_NAME}.elf > ${IMG_NAME}.dis

set +o xtrace
