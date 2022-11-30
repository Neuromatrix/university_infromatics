all: generate code check
generate:
	g++ generate.cpp -o generate
	.\generate.exe
code:
	julia .\lb.jl
check:
	g++ check.cpp -o check
	.\check.exe
