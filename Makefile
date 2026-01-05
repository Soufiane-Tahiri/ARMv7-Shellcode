all: shellcode

shellcode: shellcode.o
	arm-linux-gnueabi-ld -o shellcode shellcode.o

shellcode.o: shellcode.s
	arm-linux-gnueabi-as -o shellcode.o shellcode.s

clean:
	rm -f *.o shellcode
