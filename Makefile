# makefile

BUILD_DLL=-DBUILDING_EXAMPLE_DLL

all: clean exe ldd
#all: clean win ldd

obj:
	gcc ${BUILD_DLL} -c calc/calc.cpp
	gcc -c main.cpp

dll: obj
	gcc calc.o -o a.dll -shared

lib: obj
	gcc calc.o -o a.dll -shared -Wl,--out-implib,a.lib

exe: dll
	gcc main.o a.dll

win:
	x86_64-w64-mingw32-gcc ${BUILD_DLL} -c calc/calc.cpp
	x86_64-w64-mingw32-gcc ${BUILD_DLL} -mwindows main.cpp calc.o

ldd:
	ldd a.exe

run:
	./a.exe

clean:
	rm -fr a.exe a.dll a.lib main.o calc.o
