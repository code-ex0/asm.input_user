#!/bin/bash

nasm -f elf64 input.asm -o a64.o
ld a64.o -o a64
./a64
