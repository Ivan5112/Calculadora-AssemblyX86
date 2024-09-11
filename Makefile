 main:
	nasm -g -f elf64 *.asm -oobject.o
	g++ -g -no-pie object.o *.cpp

run:
	nasm -g -f elf64 *.asm -oobject.o
	g++ -g -no-pie object.o *.cpp
	./a.out

debug: 
	nasm -g -f elf64 *.asm -oobject.o
	g++ -g -no-pie object.o *.cpp
	gdb a.out
	
clean:
	rm *.out
	rm *.o
	rm filtro*.bmp