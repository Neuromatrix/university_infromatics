n = parse(Int32,readline())
m = parse(Int32,readline())
arr = [4 2 0 2]
for i in 1:n
    print(" "^arr[(i-1)%4+1])
    for j in 1:m
        print(j*10)
        print(" ")
    end
    println()
end
