n = parse(Int64, readline())
k = parse(Int64, readline())
data = fill("*",(n,n))

for i in 1:n
    m = k - i+1
    for j in 1:m
        data[i,j] = "0"
        data[i,n-j+1] = "0"
        data[n-i+1,j] = "0"
        data[n-i+1,n-j+1] = "0"
    end
end
for i in 1:n
    for j in 1:n
        if (data[i,j]=="0")
            print(" ")
        else
            print(data[i,j])
        end
        print(" ")
    end
    println()
end
