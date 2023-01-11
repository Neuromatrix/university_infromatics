all: generate code check
generate:
	g++ generate.cpp -o generate
	.\generate.exe
code:
	julia .\lb_2_4.jl
check:
	g++ check.cpp -o check
	.\check.exe
